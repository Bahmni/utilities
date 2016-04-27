#encoding: utf-8
#!/usr/bin/ruby
require 'mysql'
require 'csv'
require 'micro-optparse'
Dir.glob(File.join(File.dirname(File.absolute_path(__FILE__)), '..', 'common', '*')) {|file| require file}
include ConceptHelper

# Required Gems : ruby-mysql, micro-optparse
parser = Parser.new do |p|
  p.banner = "Usage: ruby #{__FILE__} csv_file [options]"
  p.option :host, "Host name or IP", :default => "127.0.0.1", :short => 'H'
  p.option :user, "Mysql user", :default => "root"
  p.option :password, "Mysql password", :default => "password"
  p.option :verbose, "Verbose mode", :default => false
end
options = parser.process!

if ARGV.size < 1
  puts parser.instance_variable_get(:@optionparser)
  exit 1
end

@csv_file = ARGV.shift
@synonym_separator = '|'
@verbose = options[:verbose]

@col_to_index_mapping = {
    "diagnosis_name" => 0,
    'parent_concept_set'=>1,
    'synonym' => 2,
    'short_name' => 3
}

@openmrs_conn = Mysql.connect(options[:host], options[:user], options[:password], 'openmrs')

def import_from_csv
  na_datatype_id= get_concept_datatype_id('N/A')
  conv_concept_class_id = get_concept_class_id("ConvSet")
  diagnosis_concept_class_id = get_concept_class_id("Diagnosis")
  diag_concept_set_id = create_diagnosis_concept_set(conv_concept_class_id, na_datatype_id)

  if(!prerequisites_valid(na_datatype_id,conv_concept_class_id,diagnosis_concept_class_id,diag_concept_set_id))
    return
  end

  def escape_string(str)
    return str == nil ? str : Mysql.escape_string(str)
  end

  CSV.foreach(@csv_file, {:headers => true, :encoding => 'utf-8'}) do |row|
    diagnosis_details = CSV.parse_line(row.to_s)
    diag_name =escape_string(get_col(diagnosis_details, "diagnosis_name"))
    diag_short_name =escape_string(get_col(diagnosis_details, "short_name"))
    synonyms_string =escape_string(get_col(diagnosis_details, "synonym"))
    parent_concept = escape_string(get_col(diagnosis_details, "parent_concept_set"))
    parent_concept = parent_concept ? parent_concept : "Other Diagnoses"

    synonyms = synonyms_string ? synonyms_string.split(@synonym_separator) : []

    if(is_valid_row(diagnosis_details))

      parent_concept_id = get_concept_by_name(parent_concept)
      if parent_concept_id ==nil
        parent_concept_id = insert_concept_without_duplicate(parent_concept,nil,nil,conv_concept_class_id,na_datatype_id,true,nil)
      end
      add_to_concept_set_if_not_preset(parent_concept_id,diag_concept_set_id)

      concept_id = get_concept_by_name(diag_name)
      if concept_id == nil
        concept_id = insert_concept_without_duplicate_in_any_other_order(diag_name, diag_short_name, nil, diagnosis_concept_class_id, na_datatype_id, false, synonyms)
      end

      if(concept_id != nil)
        add_to_concept_set_if_not_preset(concept_id,parent_concept_id)
      end

      show_success ("inserted : #{diagnosis_details.to_s}")
    end
  end
end

def get_col (row, col_name)
  return row[@col_to_index_mapping[col_name]]
end

def create_diagnosis_concept_set (conv_concept_class_id, na_datatype_id)
  diagnosis_set_of_sets = "Diagnosis Set of Sets"
  diagnosis_concept_set_id  = get_concept_by_name(diagnosis_set_of_sets)

  if diagnosis_concept_set_id != nil
    return diagnosis_concept_set_id
  end
  return insert_concept_without_duplicate(diagnosis_set_of_sets, nil, nil, conv_concept_class_id, na_datatype_id, true, nil)
end

def is_valid_row(diagnosis_details)
  diag_name =get_col(diagnosis_details, "diagnosis_name")

  if !diag_name || diag_name.empty?
    show_error("Diagnosis Name cannot be empty \n\t #{diagnosis_details.to_s}")
    return false
  end
  return true
end

def prerequisites_valid(datatype_id,conv_concept_class_id,diag_concept_class_id,diag_concept_set_of_sets_id)
  if !datatype_id || datatype_id ==-1
    show_error("N/A concept datatype id not found")
    return false
  end

  if !conv_concept_class_id || conv_concept_class_id == -1
    show_error("ConvSet concept class id not found")
    return false
  end

  if !diag_concept_class_id || diag_concept_class_id == -1
    show_error("Diagnosis concept class id not found ")
    return false
  end
  if !diag_concept_set_of_sets_id || diag_concept_set_of_sets_id == -1
    show_error("Diagnosis Set of Sets concept not found  : #{diag_concept_set_of_sets_id}")
    return false
  end

  return true
end

import_from_csv