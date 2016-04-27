#this would delete basic setup data of ELIS system including organization name, users etc.
#this would not delete Lab test masterdata
delete from login_user where login_name not in ('user','admin');
truncate table result_signature,
        referral_result,
        referral,
        result_inventory,
        result,
        worksheet_analyte,
        note,
        report_external_export,
        report_external_import,
        analysis_qaevent,
        analysis_storages,
        analysis_users,
        analysis,
        sample_qaevent,
        sample_requester,
        sample_human,
        sample_newborn,
        sample_animal,
        sample_environmental,
        sample_item,
        sample_organization,
        sample_projects,
        sample,
        observation_history,
        patient,
        patient_identity,
        patient_occupation,
        person_address,
        patient_patient_type,
        patient_relations,
        organization_contact, provider, person;
truncate table event_records;
delete from organization_organization_type where org_id not in (select id from organization where name in ('BD'));
delete from organization_address where organization_id not in (select id from organization where name in ('BD'));
delete from organization where name not in ('Haiti','BD');
