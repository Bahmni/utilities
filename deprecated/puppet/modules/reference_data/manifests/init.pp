class reference_data {
  require tomcat::clean
  include bahmni_revisions
  $reference_data_war =  "${build_output_dir}/${reference_data_war_file_name}.war"
  $reference_data_webapp_location =  "${tomcatInstallationDirectory}/webapps/reference-data"
  $reference_data_scripts_zip =  "${build_output_dir}/reference-data-scripts.zip"
  $reference_data_scripts_dir = "${temp_dir}/scripts"
  
  file { "${reference_data_webapp_location}" : ensure => absent, purge => true}

  exec { "latest_reference_data_webapp" :
    command   => "unzip -o -q ${reference_data_war} -d ${reference_data_webapp_location} ${deployment_log_expression}",
    provider  => shell,
    path      => "${os_path}",
    require   => [File["${deployment_log_file}"], File["${reference_data_webapp_location}"]],
    user      => "${bahmni_user}",
  }

  exec { "reference_data_scripts" :
    provider => "shell",
    command   => "rm -rf ${reference_data_scripts_dir} && unzip -o -q ${reference_data_scripts_zip} -d ${temp_dir} ${deployment_log_expression}",
    path => "${os_path}"
  }

  exec { "reference_data_setupdb" :
    command => "./setupDB.sh ${deployment_log_expression}",
    provider => "shell",
    cwd => "${reference_data_scripts_dir}",
    path => "${os_path}",
    require => Exec["reference_data_scripts"]
  }  

  file { "${temp_dir}/run-reference-data-liquibase.sh" :
    ensure      => present,
    content     => template("reference_data/run-liquibase.sh"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 554
  }

  exec { "reference_data_updatedb" :
    command     => "${temp_dir}/run-reference-data-liquibase.sh ${deployment_log_expression}",
    path        => "${os_path}",
    provider    => shell,
    cwd         => "${tomcatInstallationDirectory}/webapps",
    require     => [File["${temp_dir}/run-reference-data-liquibase.sh"], Exec["latest_reference_data_webapp"], Exec["reference_data_setupdb"]]
  }
}