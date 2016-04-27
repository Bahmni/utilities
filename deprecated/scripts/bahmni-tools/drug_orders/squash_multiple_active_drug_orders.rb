#!/usr/bin/ruby
require 'mysql2'
require 'micro-optparse'

# Required Gems : mysql2, micro-optparse
parser = Parser.new do |p|
   p.banner = "Usage: ruby #{__FILE__} [options]"
   p.option :host, "Host name or IP", :default => "192.168.33.10", :short => 'H'
   p.option :username, "Mysql user", :default => "openmrs-user"
   p.option :password, "Mysql password", :default => "password"
   p.option :database, "Mysql db", :default => "openmrs"
   p.option :date, "Date to consider active orders (yyyy-mm-dd)", :default => "2014-07-28"
   p.option :dry_run, "Dry run mode. If true, sets verbose also true", :default => true
   p.option :verbose, "Verbose mode", :default => true
end
options = parser.process!

@openmrs_conn = Mysql2::Client.new(options)
@dry_run = options[:dry_run]
@verbose = options[:verbose] || options[:dry_run]

@multiple_active_drug_orders_sql= "Select identifier, drug.name as drug_name, COUNT(*) as count, group_concat(orders.order_id)  as order_ids_string
from drug_order
join orders on drug_order.order_id = orders.order_id
join drug_order as other_drug_order on other_drug_order.order_id != drug_order.order_id and other_drug_order.drug_inventory_id = drug_order.drug_inventory_id
join orders as other_orders on other_drug_order.order_id = other_orders.order_id and orders.patient_id = other_orders.patient_id 
join patient_identifier on patient_identifier.patient_id = orders.patient_id
join drug on drug_order.drug_inventory_id = drug.drug_id
where orders.voided = 0 and other_orders.voided = 0 and orders.auto_expire_date > '2014-07-28' and other_orders.auto_expire_date > '2014-07-28'
    and (orders.start_date <= other_orders.auto_expire_date and other_orders.start_date <= orders.auto_expire_date)
group by orders.patient_id, drug_order.drug_inventory_id
HAVING COUNT(drug_order.drug_inventory_id) > 1;"

def query(sql)
  @openmrs_conn.query(sql, :symbolize_keys => true)
end

def update_query(sql)
  @dry_run ? puts(sql) : query(sql)
end

def squash_multiple_active_drug_orders
  active_orders_for_patients = query(@multiple_active_drug_orders_sql)
  puts "Number of patient, drug combinations: #{active_orders_for_patients.count}"
  active_orders_for_patients.to_a.each_with_index do |row, index|
      active_orders = query("Select orders.order_id as order_id, dose, dosing_instructions, start_date, auto_expire_date, datediff(auto_expire_date, start_date) as number_of_days 
                             FROM orders
                             INNER JOIN drug_order on drug_order.order_id = orders.order_id
                             WHERE orders.order_id IN (#{row[:order_ids_string]}) 
                             ORDER BY start_date ASC").to_a
      total_number_of_days = active_orders.inject(0) {|total, order| total + order[:number_of_days] }
      first_order = active_orders.shift
      remaining_orders = active_orders
      last_order = remaining_orders.last
      remaining_orders_ids_string = remaining_orders.map {|order| order[:order_id] }.join(',')

      if(@verbose)
        puts "*" * 100
        puts "#{index+1}. Patient: #{row[:identifier]}, Drug: #{row[:drug_name]}"
        puts first_order
        puts remaining_orders
      end
      update_query("UPDATE orders 
            SET auto_expire_date = date_add(start_date, INTERVAL #{total_number_of_days} DAY)
            WHERE order_id = #{first_order[:order_id]};")
      update_query("UPDATE drug_order
            SET dose = #{last_order[:dose].nil? ? 'NULL' : last_order[:dose]}, dosing_instructions = '#{last_order[:dosing_instructions]}'
            WHERE order_id = #{first_order[:order_id]};")
      update_query("UPDATE orders 
            SET voided = true, void_reason = 'To Merge Active Orders', voided_by = 1
            WHERE order_id IN (#{remaining_orders_ids_string});")
  end
end

squash_multiple_active_drug_orders