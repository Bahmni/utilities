define bahmni_ui_app($appName) {
  $appZipFile = "${build_output_dir}/${appName}.zip"
  $appDirectory = "${httpd_deploy_dir}/${appName}"

  exec { "delete_${appDirectory}" :
    command => "rm -rf ${appDirectory}",
    path    => "${os_path}"
  }

  exec { "deploy_bahmni_ui_app_${appName}" :
    command   => "unzip -q -o $appZipFile -d ${appDirectory} ${deployment_log_expression}",
    provider  => shell,
    path      => "${os_path}",
    require   => Exec["delete_${appDirectory}"]
  }

  exec { "change_rights_for_app_directory_${appDirectory}" :
    provider => "shell",
    command => "chown -R ${bahmni_user}:${bahmni_user} ${appDirectory}; chmod -R 775 ${appDirectory}",
    path => "${os_path}",
    require => Exec["deploy_bahmni_ui_app_${appName}"],
  }
}