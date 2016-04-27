SET SESSION group_concat_max_len = 1000000;
SELECT
  intermediate.concept,
  concat('UPDATE obs set voided=1,voided_by=1,void_reason=''Duplicate Diagnosis'' where obs_group_id in (',
         group_concat(obs_group_id), ') or obs_id in (', group_concat(obs_group_id),');') AS update_query
FROM (
       SELECT
         valueCoded.name AS concept,
         group_concat(obsGroup.obs_id ORDER BY obsGroup.obs_id ASC),
         SUBSTR(group_concat(obsGroup.obs_id ORDER BY obsGroup.obs_id ASC),
                INSTR(group_concat(obsGroup.obs_id ORDER BY obsGroup.obs_id ASC), ',') + 1) AS obs_group_id
       FROM obs obs
         INNER JOIN concept_name cn
           ON obs.concept_id = cn.concept_id AND obs.voided =0 AND cn.voided = 0 AND cn.name IN ('Coded Diagnosis') AND
              cn.concept_name_type = 'FULLY_SPECIFIED'
         INNER JOIN concept_name valueCoded ON obs.value_coded = valueCoded.concept_id AND
                                               valueCoded.concept_name_type = 'FULLY_SPECIFIED' AND
                                               valueCoded.voided = 0 AND valueCoded.name IN ('Epilepsy')
         INNER JOIN obs obsGroup ON obs.obs_group_id = obsGroup.obs_id
         INNER JOIN concept_name visitDiagnosis
           ON visitDiagnosis.concept_id = obsGroup.concept_id AND visitDiagnosis.name = 'Visit Diagnoses' AND
              visitDiagnosis.concept_name_type = 'FULLY_SPECIFIED'
       GROUP BY obs.person_id
       HAVING count(valueCoded.name) > 1) intermediate
GROUP BY intermediate.concept;
