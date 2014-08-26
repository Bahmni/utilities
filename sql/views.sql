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

create or replace view text_obs_view as
select
concept_view.concept_name as concept_name,
obs.value_text as value
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