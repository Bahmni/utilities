class tomcat_conf {

  file { "CATALINA_OPTS" :
    path    => "${tomcatInstallationDirectory}/bin/setenv.sh",
    ensure  => present,
    content => template ("tomcat_conf/setenv.sh"),
    owner   => "${bahmni_user}",
    mode    => 664,
  }

  file { "/etc/init.d/tomcat" :
    ensure      => present,
    content     => template("tomcat_conf/tomcat.initd.erb"),
    mode        => 777,
    group       => "root",
    owner       => "root",
  }

  file { "catalina.sh_with_log4j_properties_path_info" :
    path        => "${tomcatInstallationDirectory}/bin/catalina.sh",
    ensure      => present,
    content     => template("tomcat_conf/catalina.sh.erb"),
    owner       => "${bahmni_user}",
    replace     => true,
    mode        => 774,
  }


  file { "${tomcatInstallationDirectory}/conf/server.xml" :
    ensure    => present,
    content   => template("tomcat_conf/server.xml.erb"),
    owner     => "${bahmni_user}",
    replace   => true,
    mode      => 664,
  }

  file { "${tomcatInstallationDirectory}/conf/context.xml" :
    ensure    => present,
    content   => template("tomcat_conf/context.xml.erb"),
    owner     => "${bahmni_user}",
    replace   => true,
    mode      => 664,
  }

  file { "log4j_properties_file_for_tomcat" :
    path      => "${tomcatInstallationDirectory}/lib/log4j.properties", 
    ensure    => present,
    content   => template("tomcat_conf/log4j.properties.erb"),
    owner     => "${bahmni_user}",
    replace   => true,
    mode      => 664,
  }

 file { "delete_original_tomcat_logging_properties_file" :
    path      => "${tomcatInstallationDirectory}/conf/logging.properties",
    ensure    => absent,
  }

  file { "${tomcatInstallationDirectory}/conf/web.xml" :
    ensure      => present,
    content     => template("tomcat_conf/web.xml.erb"),
    group       => "${bahmni_user}",
    owner       => "${bahmni_user}",
    replace     => true,
  }

  file { "${tomcatInstallationDirectory}/conf/tomcat-users.xml" :
    ensure    => present,
    content   => template("tomcat_conf/tomcat-users.xml.erb"),
    owner     => "${bahmni_user}",
    mode      => 664,
  }

  # Mujir - recursively doing this through file resource eats up time. Hence the exec below.
  file { "${tomcatInstallationDirectory}" :
    ensure => directory,
    mode   => 776,
    owner  => "${bahmni_user}",
    group  => "${bahmni_user}",
  }

  file { "${tomcatInstallationDirectory}/docs" :
    ensure    => absent,
    recurse   => true,
    force     => true,
    purge     => true,
    require => File["${tomcatInstallationDirectory}"],
  }

  file { "${tomcatInstallationDirectory}/examples" :
    ensure    => absent,
    recurse   => true,
    force     => true,
    purge     => true,
    require => File["${tomcatInstallationDirectory}"],
  }

  exec { "change_group_rights_for_tomcatInstallationDirectory" :
    provider => "shell",
    command => "chown -R ${bahmni_user}:${bahmni_user} ${tomcatInstallationDirectory}; chmod -R 776 ${tomcatInstallationDirectory}; ",
    path => "${os_path}",
    require => File["${tomcatInstallationDirectory}"],
  }

  exec { "register_tomcat_as_a_service" :
    command   => "chkconfig --add /etc/init.d/tomcat",
    user      => "root",
    provider  => shell,
    require   => [File["${tomcatInstallationDirectory}"], File["/etc/init.d/tomcat"]],
  }

  service { "tomcat":
    enable    => true,
    ensure => running,
    require   => Exec["register_tomcat_as_a_service"],
  }
}
