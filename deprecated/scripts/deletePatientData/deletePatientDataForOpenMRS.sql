set foreign_key_checks=0;

truncate table test_order;
truncate table drug_order;
truncate table obs;
truncate table orders;
truncate table relationship;
truncate table visit_attribute;
truncate table bed_patient_assignment_map;
truncate table encounter_provider;
truncate table encounter;
truncate table visit;
truncate table patient_identifier;
truncate table patient;
truncate table obs_relationship;
truncate table patient_state;
truncate table patient_program;
truncate table patient_program_attribute;
truncate table episode;
truncate table episode_patient_program;
truncate table episode_encounter;

delete from person_address where person_id <> 1;
delete from person_attribute where person_id <> 1;
delete from person_name where not exists 
	(select u.person_id from users u where person_name.person_id = u.person_id or person_name.person_id = 1) 
	and not exists (select p.person_id from provider p where person_name.person_id = p.person_id or person_name.person_id = 1);
delete from person where not exists 
	(select u.person_id from users u where person.person_id = u.person_id or person.person_id = 1) 
	and not exists (select p.person_id from provider p where person.person_id = p.person_id or person.person_id = 1);

truncate table event_records_offset_marker;

set foreign_key_checks=1;
