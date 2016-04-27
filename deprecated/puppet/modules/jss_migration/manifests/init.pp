class jss_migration {
	$jss_data_temp = "${temp_dir}/jss-data"
	$jss_data_log_file = "${logs_dir}/jss-data.log"
	$jss_data_log_file_expression = ">> ${jss_data_log_file} 2>> ${jss_data_log_file}"

  file { "${jss_data_log_file}" :
      ensure      => present,
      mode        => 666,
      content     => "",
  }

	file { "${jss_data_temp}" :
    ensure    => directory,
    recurse   => true,
    force     => true,
    purge     => true,
		mode 	    => 666
	}

	exec { "jss_data" :
		command => "java -cp ${build_output_dir}/jss-old-data-${$bahmni_openmrs_data_version}-jar-with-dependencies.jar org.bahmni.jss.JSSMigrator ${package_dir}/data-dump/jss ${jss_registration_csv} ${number_of_migrator_threads} ${jss_data_log_file_expression}",
		path => "${os_path}",
		require => File["${jss_data_temp}"],
		cwd			=> "${jss_data_temp}",
		timeout => 0
	}
}
