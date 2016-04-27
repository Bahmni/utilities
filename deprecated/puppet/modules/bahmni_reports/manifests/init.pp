class bahmni_reports {
  $bahmni_reports_dir = "${build_output_dir}/bahmni-enviroment/puppet/modules/bahmni_reports"
  $webapps_dir="${tomcatInstallationDirectory}/webapps"
  $liquibase_jar="${webapps_dir}/openmrs/WEB-INF/lib/liquibase-core-2.0.5.jar"
  $bahmni_reports_war_path="${build_output_dir}/${bahmni_reports_war_file_name}.war"
  $mysql_driver_path="${packages_servers_dir}/mysql-connector-java-${mysql_connector_java_version}.jar"

	exec { "clear_bahmni_reports_webapp" :
	    command   => "rm -rf ${tomcatInstallationDirectory}/webapps/${bahmni_reports_war_file_name}",
	    provider  => shell,
	    path      => "${os_path}",
	    user      => "${bahmni_user}"
	}

  exec { "latest_bahmni_reports_webapp" :
	    command   => "unzip -o -q ${build_output_dir}/${bahmni_reports_war_file_name}.war -d ${webapps_dir}/${bahmni_reports_war_file_name} ${deployment_log_expression}",
	    provider  => shell,
	    path      => "${os_path}",
	    require   => [Exec["clear_bahmni_reports_webapp"]],
	    user      => "${bahmni_user}"
	}

  file { "/home/${bahmni_user}/.bahmni-reports" :
        ensure  => directory,
        owner   => "${bahmni_user}",
        group   => "${bahmni_user}",
        mode    => 554
  }

  file { "/home/${bahmni_user}/.bahmni-reports/bahmni-reports.properties" :
        ensure  => present,
        content => template("bahmni_reports/bahmni-reports.properties.erb"),
        owner   => "${bahmni_user}",
        group   => "${bahmni_user}",
        mode    => 554
  }

	file { "${temp_dir}/run-bahmni-reports-liquibase.sh" :
        ensure      => present,
        content     => template("bahmni_reports/run-bahmni-reports-liquibase.sh"),
        owner       => "${bahmni_user}",
        group       => "${bahmni_user}",
        mode        => 554
      }

    if $is_passive_setup == "false" {
      exec { "run_bahmni_reports_liquibase" :
        command     => "${temp_dir}/run-bahmni-reports-liquibase.sh ${deployment_log_expression}",
        path        => "${os_path}",
        provider    => shell,
        require     => [Exec["latest_bahmni_reports_webapp"], File["${temp_dir}/run-bahmni-reports-liquibase.sh"]]
      }
    } else {
      notice ("Not running reports migration. ")
    }
}