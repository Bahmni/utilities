create or replace view concept_reference_view as
select
concept_reference_term.concept_reference_term_id as concept_reference_term_id,
concept_reference_term.name as concept_reference_term_name,
concept_reference_term.code as concept_reference_term_code,
concept_reference_source.name as concept_reference_source_name
from concept_reference_term, concept_reference_source
where
concept_reference_term.concept_source_id = concept_reference_source.concept_source_id;

create or replace view concept_view as
select
concept.concept_id as concept_id,
concept_class.name as concept_class_name,
concept_name.name as concept_name,
concept_reference_view.concept_reference_term_code as concept_reference_term_code,
concept_reference_view.concept_reference_term_name as concept_reference_term_name,
concept_reference_view.concept_reference_source_name as concept_reference_source_name
from concept, concept_class, concept_name, concept_reference_map, concept_map_type, concept_reference_view
where
concept.class_id = concept_class.concept_class_id
and concept_name.concept_id = concept.concept_id
and concept_name.locale = 'en'
and concept.date_retired is null
and concept_name.voided = false
and concept_name.concept_name_type = 'FULLY_SPECIFIED'
and concept.concept_id = concept_reference_map.concept_id
and concept_reference_map.concept_map_type_id = concept_map_type.concept_map_type_id
and concept_map_type.name = 'SAME-AS'
and concept_reference_map.concept_reference_term_id = concept_reference_view.concept_reference_term_id;

create or replace view concept_children_view as
select
parent.concept_id as parent_concept_id,
parent.concept_class_name as parent_concept_class_name,
parent.concept_name as parent_concept_name,
child.concept_id as child_concept_id,
child.concept_class_name as child_concept_class_name,
child.concept_name as child_concept_name
from concept_view parent, concept_view child, concept_set
where parent.concept_id = concept_set.concept_set and
child.concept_id = concept_set.concept_id;

create or replace view concept_answer_view as
select
question_concept_view.concept_id as question_concept_id,
question_concept_view.concept_class_name as question_concept_class_name,
question_concept_view.concept_name as question_concept_name,
answer_concept_view.concept_id as answer_concept_id,
answer_concept_view.concept_class_name as answer_concept_class_name,
answer_concept_view.concept_name as answer_concept_name
from concept_view question_concept_view, concept_view answer_concept_view, concept_answer
where
question_concept_view.concept_id = concept_answer.concept_id
and answer_concept_view.concept_id = concept_answer.answer_concept;

create or replace view obs_view as
select
concept_view.*,
obs.obs_id as obs_id,
obs.value_text as value_text,
obs.value_datetime as value_datetime,
obs.value_numeric as value_numeric,
obs.obs_group_id as obs_group_id,
obs.person_id as person_id
from obs, concept_view
where
obs.concept_id = concept_view.concept_id;

create or replace view coded_obs_view as
select
question.concept_id as concept_id,
question.concept_name as concept_name,
answer.concept_name as concept_value,
answer.concept_id as answer_concept_id,
obs.obs_group_id as obs_group_id
from obs, concept_view question, concept_view answer
where
obs.concept_id = question.concept_id and
obs.value_coded = answer.concept_id;

create or replace view radiology_view as
select
concept_children_view.child_concept_id as concept_id,
concept_children_view.child_concept_name as name
from concept_children_view
where parent_concept_name = 'Radiology';

-- This would need refactoring when we change the model
create or replace view radiology_result_view as
select
file_obs.person_id as person_id,
radiology_view.name as name,
file_obs.value_text as file_name
from obs_view file_obs, obs_view radiology_obs, radiology_view
where
file_obs.concept_name = 'Document' and
file_obs.obs_group_id = radiology_obs.obs_id and
radiology_obs.concept_id = radiology_view.concept_id;

create or replace view patient_diagnosis_view as
select
obs.obs_group_id,
(case when question_concept.concept_name = 'Coded Diagnosis' then answer_concept.concept_name end) as diagnosis,
(case when question_concept.concept_name = 'Diagnosis order' then answer_concept.concept_name end) as diagnosis_order,
(case when question_concept.concept_name = 'Diagnosis Certainty' then answer_concept.concept_name end) as diagnosis_certainty
from
obs, concept_view question_concept, concept_view answer_concept
where
question_concept.concept_name in ('Coded Diagnosis', 'Diagnosis order', 'Diagnosis Certainty') and
obs.concept_id = question_concept.concept_id and
obs.value_coded = answer_concept.concept_id
group by obs.obs_group_id
order by obs.obs_group_id;

select distinct(file_name) from radiology_result_view, obs_view
where radiology_result_view.person_id = obs_view.person_id and
obs_view.concept_name = 'BMI Status' and
obs_view.value_text in ('Very Severely Underweight', 'Underweight', 'Severely Underweight') and
radiology_result_view.name like '%Chest PA%' limit 50
INTO OUTFILE '/tmp/xray_file_for_low_bmi.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


explain  select count(*) from coded_obs_view as diagnosis_obs
join coded_obs_view as diagnosis_attributes_obs on diagnosis_obs.concept_name = 'Coded Diagnosis' and diagnosis_obs.obs_group_id = diagnosis_attributes_obs.obs_group_id;