\set ON_ERROR_STOP true

SET search_path TO clinlims;

DROP TABLE IF EXISTS temp_openmrs_patient;

CREATE TABLE temp_openmrs_patient
(uuid varchar, old_uuid varchar UNIQUE, old_identifier varchar, identifier varchar,
given_name varchar, middle_name varchar, family_name varchar,
birthdate date, death_date date, gender varchar);

COPY temp_openmrs_patient 
FROM '/tmp/openmrs_patient.csv'
NULL As '\N'
DELIMITER ',' CSV;

UPDATE patient_identity
SET identity_data = temp_openmrs_patient.identifier
FROM patient, patient_identity_type, temp_openmrs_patient
WHERE patient.uuid = temp_openmrs_patient.old_uuid AND patient_identity.patient_id = patient.id
AND patient_identity_type.id = patient_identity.identity_type_id 
AND patient_identity_type.identity_type = 'ST';

UPDATE person
SET first_name = temp_openmrs_patient.given_name, 
	last_name = temp_openmrs_patient.family_name,
	middle_name = temp_openmrs_patient.middle_name
FROM patient, temp_openmrs_patient
WHERE patient.uuid = temp_openmrs_patient.old_uuid AND person.id = patient.person_id;
               
UPDATE patient
SET gender = temp_openmrs_patient.gender,
	birth_date = temp_openmrs_patient.birthdate,
	death_date = temp_openmrs_patient.death_date,
	uuid = temp_openmrs_patient.uuid
FROM temp_openmrs_patient
WHERE patient.uuid = temp_openmrs_patient.old_uuid;
               
DROP TABLE IF EXISTS temp_openmrs_patient;