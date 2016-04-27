#!/bin/bash
set -e

rm -rf /tmp/patient_identifier_uuid_map.sql

echo "Please enter MySQl password when prompted."

mysql -uroot -p openmrs -e "
    SELECT 
        concat(\"UPDATE res_partner set uuid='\", person.uuid, \"' where ref='\", identifier, \"';\")
    INTO OUTFILE '/tmp/patient_identifier_uuid_map.sql'
      LINES TERMINATED BY '\n'
    from patient_identifier, person
    where patient_identifier.patient_id = person.person_id 
        and identifier_type = (select patient_identifier_type_id from patient_identifier_type where name='Bahmni Id')"

psql -Upostgres openerp < /tmp/patient_identifier_uuid_map.sql