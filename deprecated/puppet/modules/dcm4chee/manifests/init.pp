class dcm4chee{
  $dcm4chee_user="dcm4chee"
  $dcm4chee_group="bahmni"
  $bahmni_location = "/var/lib/bahmni"
  $dcm4chee_zip_filename = "dcm4chee-2.18.1-psql"
  $dcm4chee_location =  "${bahmni_location}/${dcm4chee_zip_filename}"
  $dcm4chee_server_default_location = "${dcm4chee_location}/server/default"
  $dcm4chee_server_xml_location = "${dcm4chee_server_default_location}/deploy/jboss-web.deployer"
  $dcm4chee_conf_location = "${dcm4chee_server_default_location}/conf"
  $dcm4chee_archive_directory = "${dcm4chee_server_default_location}/archive"

  $share_location = "/usr/share"
  $jboss_filename = "jboss-4.2.3.GA"
  $jboss_location = "${share_location}/${jboss_filename}"
  $jboss_zip_filename = "${jboss_filename}-jdk6"

  $oviyam2_war_filename = "oviyam2"
  $oviyam2_bin_foldername = "Oviyam-2.1-bin"

    user { "$dcm4chee_user":
      ensure => present,
      gid    => 'bahmni',
    }

    file { "copy_setup_DB" :
      path    => "${temp_dir}/setupDB.sql",
      ensure  => present,
      content => template ("dcm4chee/setupDB.sql"),
      owner   => "root",
      mode    => 664,
    }

    file { "copy_install_script" :
      path      => "${temp_dir}/install_dcm4chee.sh",
      ensure    => present,
      content   => template ("dcm4chee/install_dcm4chee.sh"),
      owner     => "root",
      mode      => 664,
    }

    file { "copy_oviyam2" :
      path    => "${temp_dir}/oviyam2.sh",
      ensure  => present,
      content => template ("dcm4chee/oviyam2.sh"),
      owner   => "root",
      mode    => 664,
    }

    exec { "install_dcm4chee" :
      command     => "sh ${temp_dir}/install_dcm4chee.sh ${deployment_log_expression}",
      provider    => shell,
      path        => "${os_path}",
      user        => "root",
      require     => [File["copy_setup_DB"], File["copy_install_script"], User["$dcm4chee_user"]],
    }

    file {["${dcm4chee_server_default_location}/work", "${dcm4chee_server_default_location}/work/jboss.web", "${dcm4chee_server_default_location}/work/jboss.web/localhost" ]:
      ensure    => "directory",
      owner     => "$dcm4chee_user",
      group     => "$dcm4chee_group",
      require   => Exec["install_dcm4chee"],
    }

    file { "copy_server_xml" :
      path      => "${dcm4chee_server_xml_location}/server.xml",
      ensure    => present,
      content   => template ("dcm4chee/server.xml"),
      owner     => "root",
      mode      => 664,
      require   => Exec["install_dcm4chee"],
    }

    file { "copy_jboss_service_xml" :
      path      => "${dcm4chee_conf_location}/jboss-service.xml",
      ensure    => present,
      content   => template ("dcm4chee/jboss-service.xml"),
      owner     => "root",
      mode      => 664,
      require   => Exec["install_dcm4chee"],
    }

    exec { "exec_oviyam2" :
      command   => "sh ${temp_dir}/oviyam2.sh ${deployment_log_expression}",
      provider  => shell,
      path      => "${os_path}",
      require   => [File["copy_oviyam2"],Exec["install_dcm4chee"]],
      user      => "root",
    }

    file { "copy_oviyam2_web_xml" :
      path      => "${dcm4chee_server_default_location}/deploy/${oviyam2_war_filename}.war/WEB-INF/web.xml",
      ensure    => present,
      content   => template ("dcm4chee/oviyam2-web.xml"),
      owner     => "root",
      mode      => 664,
      require   => Exec["exec_oviyam2"],
    }

    file { "/etc/init.d/dcm4chee" :
      ensure      => present,
      content     => template("dcm4chee/dcm4chee.initd.erb"),
      mode        => 777,
      group       => "root",
      owner       => "root",
      require     => [File["copy_server_xml"], File["copy_jboss_service_xml"]],
    }

    file { "copy_oviyam2_config_xml" :
      path      => "${dcm4chee_server_default_location}/work/jboss.web/localhost/oviyam2-1-config.xml",
      ensure    => present,
      content   => template ("dcm4chee/oviyam2-1-config.xml"),
      owner     => "root",
      mode      => 664,
      require   => [File["${dcm4chee_server_default_location}/work", "${dcm4chee_server_default_location}/work/jboss.web", "${dcm4chee_server_default_location}/work/jboss.web/localhost" ]],
    }

    if $is_passive_setup == "false" {
      service { 'dcm4chee_service':
          name    => dcm4chee,
          enable  => true,
          ensure  => running,
          require => [File["/etc/init.d/dcm4chee"], File['copy_oviyam2_config_xml']]
      }
    }
}