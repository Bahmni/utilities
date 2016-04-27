DROP PROCEDURE IF EXISTS setVisitStatusAttribute;

delimiter //
CREATE PROCEDURE setVisitStatusAttribute()
  BEGIN
    DECLARE visit_id, visit_attribute_type_id INT;
    DECLARE v_counter INT DEFAULT 0;
    DECLARE visit_status VARCHAR(40);
    DECLARE done INT DEFAULT FALSE;
    DECLARE visit_details CURSOR FOR
      (SELECT
         visit_details.visit_id,
         if(admit_encounter.name = 'ADMISSION', 'IPD', 'OPD')
           AS visit_status
       FROM (
              SELECT
                v.visit_id,
                vt.name AS visit_type
              FROM visit v
                JOIN visit_type vt ON v.visit_type_id = vt.visit_type_id
            ) AS visit_details
         LEFT JOIN (
                     SELECT
                       e.visit_id,
                       et.name
                     FROM encounter e JOIN encounter_type et
                         ON e.encounter_type = et.encounter_type_id AND et.name = 'ADMISSION') AS admit_encounter
           ON visit_details.visit_id = admit_encounter.visit_id);

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;


    SELECT vat.visit_attribute_type_id
    INTO visit_attribute_type_id
    FROM visit_attribute_type vat
    WHERE vat.name = 'Visit Status';

    delete from visit_attribute where attribute_type_id = visit_attribute_type_id;

    OPEN visit_details;

    read_loop: LOOP
      FETCH visit_details
      INTO visit_id, visit_status;

      IF done
      THEN
        LEAVE read_loop;
      END IF;

      IF v_counter = 0
      THEN
        START TRANSACTION;
      END IF;

      INSERT INTO visit_attribute (visit_id, attribute_type_id, value_reference, uuid, creator, date_created)
      VALUES (visit_id, visit_attribute_type_id, visit_status, uuid(), 1, now());
      SET v_counter = v_counter + 1;

      IF v_counter = 1000
      THEN
        COMMIT;
        SET v_counter = 0;
      END IF;

    END LOOP;
    COMMIT;
    CLOSE visit_details;

  END //

call setVisitStatusAttribute();
