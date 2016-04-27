SET @bloodgroup_attribute_id = NULL;
SET @patient_bloodgroup_concept_id = NULL;

SELECT person_attribute_type_id
FROM person_attribute_type
WHERE description = 'Blood Group'
INTO @bloodgroup_attribute_id;

SELECT concept_id
FROM concept_name
WHERE name = 'Patient Blood Group'
INTO @patient_bloodgroup_concept_id;

INSERT INTO person_attribute (
  SELECT
    NULL,
    T1.person_id,
    T1.answer_concept_id,
    @bloodgroup_attribute_id,
    1,
    NOW(),
    NULL,
    NULL,
    0,
    NULL,
    NULL,
    NULL,
    uuid()
  FROM (SELECT *
        FROM obs
          JOIN concept_answer_view ON obs.value_text = concept_answer_view.answer_concept_name
        WHERE
          obs.voided = 0 AND
          obs.concept_id = @patient_bloodgroup_concept_id AND
          concept_answer_view.question_concept_name = 'Blood Group Result' AND
          obs.person_id NOT IN (SELECT DISTINCT person_id
                                FROM person_attribute
                                WHERE person_attribute_type_id = @bloodgroup_attribute_id)
        ORDER BY obs_datetime DESC) T1
  GROUP BY T1.person_id);