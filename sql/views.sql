create or replace view concept_view as
select
concept.concept_id as concept_id,
concept_class.name as concept_class_name,
concept_name.name as concept_name
from concept, concept_class, concept_name
where
concept.class_id = concept_class.concept_class_id
and concept_name.concept_id = concept.concept_id
and concept_name.locale = 'en'
and concept.date_retired is null
and concept_name.voided = false
and concept_name.concept_name_type = 'FULLY_SPECIFIED';

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
obs.obs_group_id as obs_group_id
from obs, concept_view
where
obs.concept_id = concept_view.concept_id;

create or replace view coded_obs_view as
select
question.concept_id as concept_id,
question.concept_name as concept_name,
answer.concept_id as answer_concept_id,
answer.concept_name as value
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
radiology_view.name as name,
file_obs.value_text as file_name
from obs_view file_obs, obs_view radiology_obs, radiology_view
where
file_obs.concept_name = 'Document' and
file_obs.obs_group_id = radiology_obs.obs_id and
radiology_obs.concept_id = radiology_view.concept_id;