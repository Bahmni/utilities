delete from schema_version where script = 'V1_81__RenamingPatientIdentifierToBahmniId.sql';
delete from schema_version where script = 'V1_82__EncounterSession_Duration.sql';
delete from schema_version where script = 'V1_83__CustomEncounterMatcher.sql';
delete from global_property where property = 'bahmni.encountersession.duration';
delete from global_property where property = 'emr.encounterMatcher';
