class bahmni_pacs {
  $tomcat_webapp_location = "${tomcatInstallationDirectory}/webapps"
  $pacs_webapp_location =  "${$tomcat_webapp_location}/pacs-integration"
  $log4j_xml_file = "${tomcatInstallationDirectory}/webapps/${$pacs_war_file_name}/WEB-INF/classes/log4j.xml"

  if ($bahmni_pacs_required == "true") {

    if $is_passive_setup == "false" {
      require bahmni_pacs::database
    }

    require tomcat::clean

    exec { "clear_bahmni_pacs_webapp" :
      command   => "rm -rf ${tomcatInstallationDirectory}/webapps/${pacs_war_file_name}",
      provider  => shell,
      path      => "${os_path}",
      user      => "${bahmni_user}"
    }

    exec { "latest_pacs_webapp" :
      command   => "unzip -o -q ${build_output_dir}/${pacs_war_file_name}.war -d ${tomcat_webapp_location}/${pacs_war_file_name} ${deployment_log_expression}",
      provider  => shell,
      path      => "${os_path}",
      require   => [Exec["clear_bahmni_pacs_webapp"]],
      user      => "${bahmni_user}",
    }

    file { "${log4j_xml_file}" :
      ensure      => present,
      content     => template("bahmni_pacs/log4j.xml.erb"),
      owner       => "${bahmni_user}",
      group       => "${bahmni_user}",
      require     => Exec["latest_pacs_webapp"],
      mode        => 664,
    }

  } else {
    notice ("Not installing PACS Module. ")
  }
}

class bahmni_pacs::database {
  $bahmni_pacs_temp_dir = "${temp_dir}/pacs-integration"

  exec { "bahmni_pacs_codebase" :
    provider  => "shell",
    command   => "unzip -o -q ${build_output_dir}/pacs-integration.war -d ${temp_dir}/${pacs_war_file_name} ${deployment_log_expression}",
    path      => "${os_path}"
  }

  exec { "${$bahmni_pacs_temp_dir}/datasetup/initDB.sh" :
    command     => "sudo sh ${$bahmni_pacs_temp_dir}/datasetup/initDB.sh ${deployment_log_expression}",
    provider    => shell,
    path        => "${os_path}",
    user        => "${bahmni_user}",
    require     => Exec["bahmni_pacs_codebase"],
  }
}
