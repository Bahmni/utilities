class tomcat {
  require host
  require java

  exec { "tomcat_untar" :
    command   => "tar -zxf ${packages_servers_dir}/apache-tomcat-${tomcat_version}.tar.gz -C ${tomcatParentDirectory} ${deployment_log_expression}",
    user      => "${bahmni_user}",
    creates   => "${tomcatInstallationDirectory}",
    provider  => shell
  }

  exec { "adds_juli_adapters" :
    command   => "cp ${packages_servers_dir}/tomcat-juli-adapters.jar ${tomcatInstallationDirectory}/lib/",
    user      => "${bahmni_user}",
    provider  => shell,
    require   => Exec["tomcat_untar"]
  }

  exec { "adds_juli" :
    command   => "cp ${packages_servers_dir}/tomcat-juli.jar ${tomcatInstallationDirectory}/bin/",
    user      => "${bahmni_user}",
    provider  => shell,
    require   => Exec["tomcat_untar"]
  }

  exec { "adds_log4j" :
    command   => "cp ${packages_servers_dir}/log4j-1.2.17.jar ${tomcatInstallationDirectory}/lib/",
    user      => "${bahmni_user}",
    provider  => shell,
    require   => Exec["tomcat_untar"]
  }
}
