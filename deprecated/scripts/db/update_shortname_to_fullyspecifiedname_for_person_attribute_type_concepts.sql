SET @concept_ids = NULL;

select group_concat(distinct(foreign_key)) into @concept_ids
from person_attribute_type where format='org.openmrs.Concept'
group by format;

update concept_name as c1,concept_name as c2
set c1.name=c2.name
where c1.concept_id=c2.concept_id and c1.concept_name_type='SHORT' and
     c1.concept_id in (select answer_concept from concept_answer
     where find_in_set(concept_id, @concept_ids)) and c2.concept_name_type='FULLY_SPECIFIED' and c1.locale=c2.locale;