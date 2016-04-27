define bahmni_omods::bahmni_atomfeed_client($atomfeed_client_name) {
	  $openmrs_modules_dir = "/home/${bahmni_user}/.OpenMRS/modules"
    $atomfeed_client_omod_name = "${atomfeed_client_name}-atomfeed-client-${bahmni_release_version}"

    exec { "copy_${atomfeed_client_name}_atomfeed_omod" :
      command => "cp ${build_output_dir}/${openmrs_distro_file_name_prefix}/${atomfeed_client_omod_name}.omod ${openmrs_modules_dir} ${deployment_log_expression}",
      user    => "${bahmni_user}",
      require => Exec["copy_core_bahmni_omods"],
      path => "${os_path}"
    }

    exec { "explode_${atomfeed_client_name}_atomfeed_jar" :
      command     => "unzip -o -d ${temp_dir}/${atomfeed_client_omod_name} ${openmrs_modules_dir}/${atomfeed_client_omod_name}.omod ${deployment_log_expression}",
      path        => "${os_path}",
      provider    => shell,
      require     => Exec["copy_${atomfeed_client_name}_atomfeed_omod"]
    }

    if $is_passive_setup == "false" {
      file { "${temp_dir}/run-${atomfeed_client_name}-atomfeed-client-liquibase.sh" :
        ensure      => present,
        content     => template("bahmni_omods/run-atomfeed-client-liquibase.sh"),
        owner       => "${bahmni_user}",
        group       => "${bahmni_user}",
        mode        => 554,
        require     => Exec["copy_${atomfeed_client_name}_atomfeed_omod"]
      }

      exec { "run_${atomfeed_client_name}_atomfeed_client_liquibase" :
        command     => "${temp_dir}/run-${atomfeed_client_name}-atomfeed-client-liquibase.sh ${deployment_log_expression}",
        path        => "${os_path}",
        provider    => shell,
        require     => [File["${temp_dir}/run-${atomfeed_client_name}-atomfeed-client-liquibase.sh"], File["${temp_dir}/openmrs-liquibase-functions.sh"], Exec["explode_${atomfeed_client_name}_atomfeed_jar"]]
      }
    } else {
      notice ("Not running atomfeed migrations on passive. ")
    }
}