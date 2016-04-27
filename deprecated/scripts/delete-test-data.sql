CREATE TABLE person_ids (
  SELECT DISTINCT person_id FROM person_name WHERE given_name LIKE 'Test%'
);

DELETE FROM bed_patient_assignment_map
WHERE patient_id IN (
  SELECT person_id
  FROM person_ids);

UPDATE obs
SET obs_group_id = NULL
WHERE person_id IN (
  SELECT person_id
  FROM person_ids);

DELETE FROM obs
WHERE person_id IN (
  SELECT person_id
  FROM person_ids);

DELETE FROM test_order
WHERE order_id IN (SELECT order_id
                   FROM orders
                   WHERE encounter_id IN (SELECT encounter_id
                                          FROM encounter
                                          WHERE patient_id IN (
                                            SELECT person_id
                                            FROM person_ids)));

DELETE FROM drug_order
WHERE order_id IN (SELECT order_id
                   FROM orders
                   WHERE encounter_id IN (SELECT encounter_id
                                          FROM encounter
                                          WHERE patient_id IN (
                                            SELECT person_id
                                            FROM person_ids)));

UPDATE orders
SET previous_order_id = NULL
WHERE encounter_id IN (SELECT encounter_id
                       FROM encounter
                       WHERE patient_id IN (
                         SELECT person_id
                         FROM person_ids));

DELETE FROM orders
WHERE encounter_id IN (SELECT encounter_id
                       FROM encounter
                       WHERE patient_id IN (
                         SELECT person_id
                         FROM person_ids));

DELETE FROM encounter_provider
WHERE encounter_id IN (SELECT encounter_id
                       FROM encounter
                       WHERE patient_id IN (
                         SELECT person_id
                         FROM person_ids));

DELETE FROM encounter
WHERE patient_id IN (
  SELECT person_id
  FROM person_name
  WHERE given_name LIKE 'Test%');

DELETE FROM visit_attribute
WHERE visit_id IN (SELECT visit_id
                   FROM visit
                   WHERE patient_id IN (SELECT person_id
                                        FROM person_ids));

DELETE FROM visit
WHERE patient_id IN (SELECT person_id
                     FROM person_ids);


DELETE FROM patient
WHERE patient_id IN (
  SELECT person_id
  FROM person_ids);

DELETE FROM person_address
WHERE person_id IN (SELECT person_id
                    FROM person_ids);

DELETE FROM person_attribute
WHERE person_id IN (SELECT person_id
                    FROM person_ids);

DELETE FROM person_name
WHERE person_id IN (
  SELECT person_id
  FROM person_ids);

DELETE FROM person
WHERE person_id IN (
  SELECT person_id
  FROM person_ids);

DROP TABLE person_ids;