#!/usr/bin/ruby
require 'mysql'
require 'pg'

# Required Gems : mysql, pg
if ARGV.size < 1
  puts "please provide the machine ip address"
  exit 1
end

@machine_ip = ARGV.shift
def deletePatientDataFromOpenMRS
	mrsSql = File.read(File.join(File.dirname(__FILE__), "deletePatientDataForOpenMRS.sql"))

	begin
		conn = Mysql.new(@machine_ip, 'openmrs-user', 'password', 'openmrs',nil,'/var/lib/mysql/mysql.sock') 
		conn.set_server_option Mysql::OPTION_MULTI_STATEMENTS_ON
		
		min_patient_id = 1
		rs = conn.query("select min(id) as id from event_records where category='patient';")
		rs.each_hash { |h| min_patient_id = h['id']}

		min_encounter_id = 1
		rs = conn.query("select min(id) as id from event_records where category='encounter';")
		rs.each_hash { |h| min_encounter_id = h['id']}

		conn.query("delete from event_records where id not in (#{min_patient_id}, #{min_encounter_id});")
		conn.query(mrsSql)

	ensure
		conn.close if conn
	end

	puts "deleted patient data from mrs"
end

def deletePatientDataFromOpenERP
	erpSql = File.read(File.join(File.dirname(__FILE__), "deletePatientDataForOpenERP.sql"))
	begin 
		conn = PGconn.new({:host=>@machine_ip,:user=>'openerp',:password=>'password',:dbname=>'openerp'})

		min_sale_order_id = 1
		rs = conn.query("select min(id) as id from event_records where category='sale_order'")
		min_sale_order_id = rs[0]["id"]

		conn.query("delete from event_records where id != #{min_sale_order_id};")

		conn.exec(erpSql)
	ensure
		conn.close if conn
	end
	
	puts "deleted patient data from erp"
end

def deletePatientDataFromOpenELIS
	elisSql = File.read(File.join(File.dirname(__FILE__), "deletePatientDataForOpenElis.sql"))
	begin 
		conn = PGconn.new({:host=>@machine_ip,:user=>'clinlims',:password=>'clinlims',:dbname=>'clinlims'})

		min_patient_id = 1
		rs = conn.query("select min(id) as id from event_records where category='patient';")
		min_patient_id = rs[0]["id"]

		conn.query("delete from event_records where id != #{min_patient_id};")

		conn.exec(elisSql)
	ensure
		conn.close if conn
	end

	puts "deleted patient data from elis"
end

def stopServices
	executeInVagrant "sudo service openerp stop"
	executeInVagrant "sudo pkill -9 -f tomcat"
end

def executeInVagrant(command)
	key_file = "~/.vagrant.d/insecure_private_key"
	wasSuccessful = system "ssh vagrant@#{@machine_ip} -i #{key_file}  '#{command}'"
	if (!wasSuccessful)
		puts "'#{command}' was NOT successful"
	end
end

def updateMarkers
	mrs_patient_uuid = ''
	mrs_encounter_uuid = ''

	elis_patient_uuid = ''

#	erp_sale_order_uuid = ''

	begin
		mrs_conn = Mysql.new(@machine_ip, 'openmrs-user', 'password', 'openmrs',nil,'/var/lib/mysql/mysql.sock') 
		elis_conn = PGconn.new({:host=>@machine_ip,:user=>'clinlims',:password=>'clinlims',:dbname=>'clinlims'})
#		erp_conn = PGconn.new({:host=>@machine_ip,:user=>'openerp',:password=>'password',:dbname=>'openerp'})

		rs = mrs_conn.query("select uuid as uuid from event_records where category='patient';")
		rs.each_hash { |h| mrs_patient_uuid = h['uuid']}
		rs = mrs_conn.query("select uuid as uuid from event_records where category='encounter';")
		rs.each_hash { |h| mrs_encounter_uuid = h['uuid']}

		rs = elis_conn.query("select min(uuid) as uuid from event_records where category='patient';")
		elis_patient_uuid = rs[0]["uuid"]

#		rs = erp_conn.query("select min(uuid) as uuid from event_records where category='sale_order'")
#		erp_sale_order_uuid = rs[0]["uuid"]

		mrs_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{erp_sale_order_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openerp-atomfeed-service/feed/sale_order/1' where feed_uri='http://localhost:8080/openerp-atomfeed-service/feed/sale_order/recent';")
		mrs_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{elis_patient_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openelis/ws/feed/patient/1' where feed_uri='http://localhost:8080/openelis/ws/feed/patient/recent';")

		elis_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{mrs_patient_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openmrs/ws/atomfeed/patient/1' where feed_uri='http://localhost:8080/openmrs/ws/atomfeed/patient/recent';")
		elis_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{mrs_encounter_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openmrs/ws/atomfeed/encounter/1' where feed_uri='http://localhost:8080/openmrs/ws/atomfeed/encounter/recent';")

#		erp_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{mrs_patient_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openmrs/ws/atomfeed/patient/1' where feed_uri='http://localhost:8080/openmrs/ws/atomfeed/patient/recent';")
#		erp_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{mrs_encounter_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openmrs/ws/atomfeed/encounter/1' where feed_uri='http://localhost:8080/openmrs/ws/atomfeed/encounter/recent';")
#		erp_conn.query("update markers set last_read_entry_id='tag:atomfeed.ict4h.org:#{elis_patient_uuid}', feed_uri_for_last_read_entry='http://localhost:8080/openelis/ws/feed/patient/1' where feed_uri='http://localhost:8080/openelis/ws/feed/patient/recent';")

		puts "updated markers"

	ensure
		mrs_conn.close if mrs_conn
		elis_conn.close if elis_conn
#		erp_conn.close if erp_conn
	end
end

def stripPatientData
	stopServices
	deletePatientDataFromOpenMRS
#	deletePatientDataFromOpenERP
	deletePatientDataFromOpenELIS
	updateMarkers
end

stripPatientData
