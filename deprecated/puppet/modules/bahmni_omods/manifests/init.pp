class bahmni_omods {
  require openmrs
  require bahmni_configuration
  require bahmni_distro

  $openmrs_modules_dir = "/home/${bahmni_user}/.OpenMRS/modules"
  $ui_modules_dir = "${build_output_dir}/ui-modules"
  $webapps_dir="${tomcatInstallationDirectory}/webapps"
  $liquibase_jar="${webapps_dir}/openmrs/WEB-INF/lib/liquibase-core-2.0.5.jar"
  $openmrs_war_path="${build_output_dir}/${openmrs_distro_file_name_prefix}/${openmrs_war_file_name}.war"

  file { "${openmrs_modules_dir}" :
   owner  => "${bahmni_user}",
   group  =>  "${bahmni_user}",   
   mode   => 664,
   ensure => directory
  }

  file { "copy_install_bahmni_omods" :
    path    => "${temp_dir}/install_bahmni_omods.sh",
    ensure  => present,
    content => template ("bahmni_omods/install_bahmni_omods.sh"),
    owner   => "${bahmni_user}",
    mode    => 664,
  }

  exec { "copy_core_bahmni_omods" :
    command     => "sh ${temp_dir}/install_bahmni_omods.sh ${deployment_log_expression}",
    provider    => shell,
    path        => "${os_path}",
    user        => "${bahmni_user}",
    require     => File["copy_install_bahmni_omods"],
  }

  if $bahmni_appointments_required == "true" {
    file { "copy_install_appointment_omods" :
      path    => "${temp_dir}/install_appointment_omods.sh",
      ensure  => present,
      content => template ("bahmni_omods/install_appointment_omods.sh"),
      owner   => "${bahmni_user}",
      mode    => 664,
    }

    exec { "copy_appointment_omods" :
      command     => "sh ${temp_dir}/install_appointment_omods.sh ${deployment_log_expression}",
      provider    => shell,
      path        => "${os_path}",
      user        => "${bahmni_user}",
      require     => File["copy_install_appointment_omods"],
    }
  }

  if $bahmni_bacteriology_required == "true" {
    file { "copy_install_bacteriology_omods" :
      path    => "${temp_dir}/install_bacteriology_omods.sh",
      ensure  => present,
      content => template ("bahmni_omods/install_bacteriology_omods.sh"),
      owner   => "${bahmni_user}",
      mode    => 664,
    }

    exec { "copy_bacteriology_omods" :
      command     => "sh ${temp_dir}/install_bacteriology_omods.sh ${deployment_log_expression}",
      provider    => shell,
      path        => "${os_path}",
      user        => "${bahmni_user}",
      require     => File["copy_install_bacteriology_omods"],
    }
  }
  
  include bahmni_omods::liquibase

  if $bahmni_openelis_required == "true" {
    bahmni_omods::bahmni_atomfeed_client { "deploy_openelis_atomfeed_client":
      atomfeed_client_name => "openelis",
      require => Class["bahmni_omods::liquibase"]
    }
  }

}

class bahmni_omods::liquibase {
  file { "${temp_dir}/openmrs-liquibase-functions.sh" :
    ensure      => present,
    content     => template("bahmni_omods/openmrs-liquibase-functions.sh"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 554
  }

  file { "${temp_dir}/run-core-bahmni-modules-liquibase.sh" :
    ensure      => present,
    content     => template("bahmni_omods/run-core-bahmni-modules-liquibase.sh"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 554,
    require     => Exec["copy_core_bahmni_omods"]
  }

  exec { "run_core_bahmni_modules_liquibase" :
    command     => "${temp_dir}/run-core-bahmni-modules-liquibase.sh ${deployment_log_expression}",
    path        => "${os_path}",
    provider    => shell,
    require     => [File["${temp_dir}/run-core-bahmni-modules-liquibase.sh"], File["${temp_dir}/openmrs-liquibase-functions.sh"]]
  }
}