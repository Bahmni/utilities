class bahmni_distro {

  notice("Variable is ${openmrs_distro_file_name_prefix}")

  file { "${build_output_dir}/${openmrs_distro_file_name_prefix}-distro.zip" :
    owner  => "${bahmni_user}",
    group  =>  "${bahmni_user}",   
    mode   => 777,
    ensure    => present
  }

  exec { "unzip_distro" :
    command   => "unzip -q -o ${build_output_dir}/${openmrs_distro_file_name_prefix}-distro.zip -d ${build_output_dir} ${deployment_log_expression}",
    provider  => shell,
    path      => "${os_path}",
    require   => [File["${build_output_dir}/${openmrs_distro_file_name_prefix}-distro.zip"]]
  }

  exec { "change_distro_permissions" :
    command   => "chmod -R 777 ${build_output_dir}/${openmrs_distro_file_name_prefix}",
    provider  => shell,
    path      => "${os_path}",
    require   => [Exec["unzip_distro"]]
  }
}