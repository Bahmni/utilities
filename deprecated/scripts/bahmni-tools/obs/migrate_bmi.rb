#!/usr/bin/ruby
require 'sequel'
require 'micro-optparse'
require 'date'
require 'csv'

# Required Gems : sequel, micro-optparse
parser = Parser.new do |p|
   p.banner = "Usage: ruby #{__FILE__} [options]"
   p.option :host, "Host name or IP", :default => "192.168.33.10", :short => 'H'
   p.option :adapter, "adapter", :default => "mysql"
   p.option :username, "Mysql user", :default => "openmrs-user"
   p.option :password, "Mysql password", :default => "password"
   p.option :database, "Mysql db", :default => "openmrs"
   p.option :verbose, "Verbose mode", :default => true
end
options = parser.process!
@openmrs_conn = Sequel.connect(options)

@bmi_chart = {}
CSV.foreach(File.join(File.dirname(__FILE__), "BMI_chart.csv")) do |row|
  @bmi_chart[row[0]] ||= {}
  @bmi_chart[row[0]][row[1]] = {:third => row[2], :fifteenth => row[3], :eightyfifth => row[4], :ninetyseventh => row[5]}
end

def query(sql)
  @openmrs_conn[sql]
end

def calculate_bmi(height, weight)
  heightInMeters = height / 100;
  (weight / (heightInMeters * heightInMeters)).round(2);
end

def calculate_bmi_for_adults(bmi)
  if (bmi < 16)
    return "Very Severely Underweight"
  elsif (bmi < 17)
    return "Severely Underweight"
  elsif (bmi < 18.5)
    return "Underweight"
  elsif (bmi < 25)
    return "Normal"
  elsif (bmi < 30)
    return "Overweight"
  elsif (bmi < 35)
    return "Obese"
  elsif (bmi < 40) 
    return "Severely Obese"
  elsif (bmi >= 40)
    return "Very Severely Obese"
  end
end

def calculate_bmi_status_for_minor(bmi, gender, age_in_month)
  if bmi < @bmi_chart[gender][age_in_month][:third].to_f
    return "Severely Underweight"
  elsif bmi < @bmi_chart[gender][age_in_month][:fifteenth].to_f
    return "Underweight"
  elsif bmi < @bmi_chart[gender][age_in_month][:eightyfifth].to_f
    return "Normal"
  elsif bmi < @bmi_chart[gender][age_in_month][:ninetyseventh].to_f
    return "Overweight"
  else
    return "Obese"
  end
end

def calculate_bmi_status(bmi, gender, birthdate, encounter_datetime)
  return nil if bmi.nil?
  age_in_month = age_in_month(birthdate, encounter_datetime).to_s
  return calculate_bmi_status_for_minor(bmi, gender, age_in_month) unless @bmi_chart[gender][age_in_month].nil?
  return calculate_bmi_for_adults(bmi)
end

def age_in_month(birthdate, encounter_datetime)
  encounter_datetime = encounter_datetime.nil? ? DateTime.now : DateTime.strptime(encounter_datetime.to_s, "%Y-%m-%d %H:%M:%S %z")
  age_in_month = (encounter_datetime - birthdate) / 30.4
  age_in_month.to_i
end

def is_minor(birthdate, encounter_datetime)
  age_in_month(birthdate, encounter_datetime) <= 228
end

@patients = query("select distinct patient_id, gender, birthdate from visit, person where person.person_id = visit.patient_id")
@concept_ids = query("select distinct concept_id, name from concept_name where name in ('HEIGHT', 'WEIGHT', 'BMI', 'BMI STATUS')").to_hash(:name, :concept_id)

@new_bmi_obs = []
@new_bmi_status_obs = []
@void_obs_id = []

@patients.each do |patient|
  encounter_obs = {}
  latest_height = nil
  latest_height_in_visit = {}
  latest_height_in_encounter = {}
  obs_data = query("
    select obs.*, cn.name, e.visit_id, e.encounter_datetime from obs, encounter e, visit v, concept_name cn
    where 
      obs.encounter_id = e.encounter_id
      and obs.concept_id = cn.concept_id
      and e.visit_id = v.visit_id
      and obs.concept_id in (#{@concept_ids.values.join(',')})
      and v.patient_id = #{patient[:patient_id]}
      and obs.voided = false
    order by e.encounter_datetime, obs.obs_datetime")


  obs_data.each do |obs_datum|
    if obs_datum[:name] == "HEIGHT"
      latest_height_in_visit[obs_datum[:visit_id]] = obs_datum[:value_numeric]
      latest_height_in_encounter[obs_datum[:encounter_id]] = obs_datum[:value_numeric]
    end
  end

  obs_data.each do |obs_datum|
    latest_height = obs_datum[:value_numeric] if obs_datum[:name] == "HEIGHT"
    encounter_datetime = obs_datum[:encounter_datetime]
    encounter_obs[obs_datum[:encounter_id]] ||= {:encounter_datetime => encounter_datetime}
    encounter_obs[obs_datum[:encounter_id]][:weight] = obs_datum[:value_numeric] if obs_datum[:name] == "WEIGHT"
    encounter_obs[obs_datum[:encounter_id]][:weight_time] = obs_datum[:obs_datetime] if obs_datum[:name] == "WEIGHT"
    encounter_obs[obs_datum[:encounter_id]][:height] = latest_height_in_encounter[obs_datum[:encounter_id]] || latest_height_in_visit[obs_datum[:visit_id]]
    encounter_obs[obs_datum[:encounter_id]][:height] ||= is_minor(patient[:birthdate], encounter_datetime) ? nil : latest_height
    encounter_obs[obs_datum[:encounter_id]][:bmi] = obs_datum[:value_numeric] if obs_datum[:name] == "BMI"
    encounter_obs[obs_datum[:encounter_id]][:bmi_status] = {:id => obs_datum[:obs_id], :value => obs_datum[:value_text]} if obs_datum[:name] == "BMI STATUS"
  end

  encounter_obs.each do |key, enc_data|
    # puts "#{patient[:patient_id]} =>> #{enc_data}"
    if(!enc_data[:bmi].nil? && !enc_data[:bmi_status].nil? && is_minor(patient[:birthdate], enc_data[:encounter_datetime]))
      bmi_status = calculate_bmi_status(enc_data[:bmi], patient[:gender], patient[:birthdate], enc_data[:encounter_datetime])
      if(bmi_status != enc_data[:bmi_status][:value])
        @void_obs_id.push(enc_data[:bmi_status][:id])
        comments = "[height:#{enc_data[:height]}, weight:#{enc_data[:weight]}, bmi:#{enc_data[:bmi]}]"
        @new_bmi_status_obs.push({:encounter_id => key, :concept_id => @concept_ids["BMI STATUS"], :value_text => bmi_status, :person_id => patient[:patient_id], :obs_datetime => enc_data[:weight_time], :comments => comments, :creator => 1, :date_created => DateTime.now})
      end
    end

    if(enc_data[:height] != nil && enc_data[:height] > 0.0 && enc_data[:weight] != nil)
      if(enc_data[:bmi].nil?)
        enc_data[:bmi] = calculate_bmi(enc_data[:height], enc_data[:weight])
        comments = "[height:#{enc_data[:height]}, weight:#{enc_data[:weight]}]"
        @new_bmi_obs.push({:encounter_id => key, :concept_id => @concept_ids["BMI"], :value_numeric => enc_data[:bmi], :person_id => patient[:patient_id], :obs_datetime => enc_data[:weight_time], :comments => comments, :creator => 1, :date_created => DateTime.now})
      end

      if(enc_data[:bmi_status].nil?)
        enc_data[:bmi_status] = calculate_bmi_status(enc_data[:bmi], patient[:gender], patient[:birthdate], enc_data[:encounter_datetime])
        comments = "[height:#{enc_data[:height]}, weight:#{enc_data[:weight]}, bmi:#{enc_data[:bmi]}]"
        @new_bmi_status_obs.push({:encounter_id => key, :concept_id => @concept_ids["BMI STATUS"], :value_text => enc_data[:bmi_status], :person_id => patient[:patient_id], :obs_datetime => enc_data[:weight_time], :comments => comments, :creator => 1, :date_created => DateTime.now})
      end
    end
  end
end

# puts @new_bmi_obs.size
# puts @new_bmi_status_obs.size
# puts @void_obs_id
@openmrs_conn[:obs].where(:obs_id => @void_obs_id).update(:voided => true)
@openmrs_conn[:obs].multi_insert(@new_bmi_obs, :commit_every => 100)
@openmrs_conn[:obs].multi_insert(@new_bmi_status_obs, :commit_every => 100)
