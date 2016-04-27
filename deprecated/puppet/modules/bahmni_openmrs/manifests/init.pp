class bahmni_openmrs {
    contain tomcat_conf
	contain bahmni_omods
	contain bahmni_ui_apps
	contain bahmni_landing_page
	contain bahmni_revisions
	contain bahmni_client_side_logging
}