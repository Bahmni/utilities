class tomcat::clean {
    exec { "remove_work_and_temp":
     	command => "rm -rf ${tomcatInstallationDirectory}/work/* ${tomcatInstallationDirectory}/temp/* ${deployment_log_expression}",
	    path => "${os_path}",
	    user => "${bahmni_user}"
    } 
}