SET FOREIGN_KEY_CHECKS=0;
-- these tables will not be used, so drop their contents 
truncate table concept_proposal_tag_map;
truncate table concept_proposal;
truncate table hl7_in_archive;
truncate table hl7_in_error;
truncate table hl7_in_queue;
truncate table user_property;
truncate table notification_alert_recipient;
truncate table notification_alert;
SET FOREIGN_KEY_CHECKS=1;

--
-- randomize the person names in the database
-- 
drop table if exists random_names;

CREATE TABLE `random_names` (
	`rid` int(11) NOT NULL auto_increment,
	`name` varchar(255) NOT NULL,
	PRIMARY KEY  (`rid`),
	UNIQUE KEY `name` (`name`),
	UNIQUE KEY `rid` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- make the randome names table hold all unique first/middle/last names
insert into random_names (name, rid) select distinct(trim(given_name)) as name, null from person_name where given_name is not null and not exists (select * from random_names where name = trim(given_name));
insert into random_names (name, rid) select distinct(trim(middle_name)) as name, null from person_name where middle_name is not null and not exists (select * from random_names where name = trim(middle_name));
insert into random_names (name, rid) select distinct(trim(family_name)) as name, null from person_name where family_name is not null and not exists (select * from random_names where name = trim(family_name));

drop procedure if exists randomize_names;
delimiter //
create procedure randomize_names()
begin
	set @size = (select max(person_name_id) from person_name);
	set @start = 0;
	-- if stepsize is increased, you should increase "limit 300" below as well
	set @stepsize = 300; 
	while @start < @size do
		update
			person_name
		set
			given_name = (select
									substring(name, 1, 20)
								from
									(select
										rid
										from
										random_names
										order by
										rand()
										limit 300
									) rid,
									random_names rn
								where	
									rid.rid = rn.rid
								order by
									rand()
								limit 1
							),
						middle_name = given_name,
						family_name = middle_name
		where
			person_name_id between @start and (@start + @stepsize);
		
		set @start = @start + @stepsize +1;
	end while;
end;
//
delimiter ;
call randomize_names();
drop procedure if exists randomize_names;
drop table random_names;

--
-- Randomize the birth dates and months (leave years the same)
--

-- this query randomizes the month, then the day as opposed to the later ones that just randomizes on month*days
-- update person set birthdate = date_add(date_add(birthdate, interval cast(rand()*12-12 as signed) month),interval cast(rand()*30-30 as signed) day) where birthdate is not null;

-- randomize +/- 6 months for persons older than ~15 yrs old
update person set birthdate = date_add(birthdate, interval cast(rand()*182-182 as signed) day) where birthdate is not null and datediff(now(), birthdate) > 15*365;

-- randomize +/- 3 months for persons between 15 and 5 years old
update person set birthdate = date_add(birthdate, interval cast(rand()*91-91 as signed) day) where birthdate is not null and datediff(now(), birthdate) between 15*365 and 5*365;

-- randomize +/- 30 days for persons less than ~5 years old
update person set birthdate = date_add(birthdate, interval cast(rand()*30-30 as signed) day) where birthdate is not null and datediff(now(), birthdate) < 5*365;

update person set birthdate_estimated = cast(rand() as signed);

-- randomize the death date +/- 3 months
update 
	person
set
	death_date = date_add(death_date, interval cast(rand()*91-91 as signed) day)
where 
	death_date is not null;

--
-- Rename location to something nonsensical
--
update
	location
set
	name = concat('Location-', location_id);

-- 
-- Dumbify the usernames and clear out login info
--
update users
set	username = concat('username-', user_id)
where username NOT IN ('admin', 'superman', 'superuser');

update users
set	password = '4a1750c8607dfa237de36c6305715c223415189',
	salt = 'c788c6ad82a157b712392ca695dfcf2eed193d7f',
	secret_question = null,
	secret_answer = null
where username NOT IN ('admin', 'superman', 'superuser');

-- clear out the username/password stored in the db
update global_property set property_value = 'admin' where property like '%.username';
update global_property set property_value = 'test' where property like '%.password';

--
-- Shift the person addresses around
--
update 
	person_address
set
	address1 = concat('address1-', person_id),
	address2 = concat('address2-', person_id),
	latitude = null,
	longitude = null,
	date_created = now(),
	date_voided = now();

--
-- Bahmni customized
--

-- identifiers (Assumes patient_identifier have been truncated)
CREATE TABLE temp_patient_identifier_old(patient_id int, identifier  varchar(256), PRIMARY KEY(patient_id));

INSERT INTO temp_patient_identifier_old 
SELECT patient_id, identifier FROM patient_identifier;

TRUNCATE patient_identifier;

INSERT INTO 
	patient_identifier
	(patient_id, identifier, identifier_type, location_id, preferred, creator, date_created, voided)
SELECT
	patient_id,
	concat((Select prefix from idgen_seq_id_gen order by rand() limit 1), patient_id),
	(Select patient_identifier_type_id from patient_identifier_type where name = 'Bahmni Id'),
	1,
	1,
	1,
	'20080101',
	0
FROM
	patient;

CREATE table temp_person_uuid_old(person_id int, uuid varchar(256), PRIMARY KEY(person_id));

INSERT INTO temp_person_uuid_old 
SELECT person_id, uuid FROM person;

UPDATE person SET uuid=uuid();

	-- If you change columns here, edit copy_openmrs_patient_data_to_*.sql files
SELECT p.uuid, pui.uuid old_uuid, pio.identifier old_identifier, pi.identifier, pn.given_name,  pn.middle_name,  pn.family_name,
	   p.birthdate, p.death_date, p.gender
FROM person p 
JOIN patient_identifier pi on p.person_id = pi.patient_id and pi.preferred = 1 and pi.voided = 0 
JOIN person_name pn on p.person_id = pn.person_id and pn.voided = 0 and pn.preferred = 1 
JOIN person_address pad ON pad.person_id = p.person_id and pad.preferred = 1
JOIN temp_patient_identifier_old pio on pio.patient_id = pi.patient_id
JOIN temp_person_uuid_old pui ON pui.person_id = p.person_id
INTO OUTFILE '/tmp/openmrs_patient.csv' 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

DROP TABLE temp_patient_identifier_old;
DROP TABLE temp_person_uuid_old;

--
-- Bahmni specific
--
TRUNCATE failed_events;

UPDATE person_attribute
INNER JOIN person_attribute_type on person_attribute_type.person_attribute_type_id = person_attribute.person_attribute_type_id
AND person_attribute_type.name = 'primaryRelative'
SET person_attribute.value = concat('primaryRelative-', person_id);

UPDATE person_attribute 
INNER JOIN person_attribute_type on person_attribute_type.person_attribute_type_id = person_attribute.person_attribute_type_id
AND person_attribute_type.name = 'primaryContact'
SET person_attribute.value = floor(pow(10, 9) + rand() * (pow(10, 10) - pow(10, 9)));

DELETE person_attribute
FROM person_attribute
INNER JOIN person_attribute_type on person_attribute_type.person_attribute_type_id = person_attribute.person_attribute_type_id
AND person_attribute_type.name IN ('givenNameLocal', 'familyNameLocal', 'middleNameLocal');