\set ON_ERROR_STOP true

DROP TABLE IF EXISTS temp_openmrs_patient;
CREATE TABLE temp_openmrs_patient
(uuid varchar, old_uuid varchar UNIQUE, old_identifier varchar, identifier varchar,
given_name varchar, middle_name varchar, family_name varchar,
birthdate date, death_date date, gender varchar);

COPY temp_openmrs_patient 
FROM '/tmp/openmrs_patient.csv'
NULL As '\N'
DELIMITER ',' CSV;

DROP TABLE IF EXISTS temp_res_partner_ref;
CREATE TABLE temp_res_partner_ref AS
SELECT id, ref
FROM res_partner;

UPDATE res_partner SET ref = NULL;

UPDATE res_partner
SET name = concat(temp_openmrs_patient.given_name, ' ', temp_openmrs_patient.middle_name, ' ',  temp_openmrs_patient.family_name),
	ref = temp_openmrs_patient.identifier,
	birthdate = temp_openmrs_patient.birthdate,
	local_name = '',
	uuid = temp_openmrs_patient.uuid
FROM temp_openmrs_patient, temp_res_partner_ref
WHERE res_partner.id = temp_res_partner_ref.id 
AND temp_res_partner_ref.ref = temp_openmrs_patient.old_identifier;
                              
DROP TABLE temp_res_partner_ref;
DROP TABLE temp_openmrs_patient;