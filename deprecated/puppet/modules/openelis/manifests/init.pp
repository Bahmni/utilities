class openelis {
  require tomcat::clean
  include bahmni_revisions
  include bahmni_configuration

  $openelis_webapp_location =  "${tomcatInstallationDirectory}/webapps/openelis"
  $bahmni_openelis_temp_dir = "${temp_dir}/OpenElis"
  $log4j_xml_file = "${tomcatInstallationDirectory}/webapps/${openelis_war_file_name}/WEB-INF/classes/log4j.xml"


  file { "${openelis_webapp_location}" : ensure => absent, purge => true}

  exec { "latest_openelis_webapp" :
    command   => "rm -rf ${openelis_webapp_location} && unzip -o -q ${build_output_dir}/${openelis_war_file_name}.war -d ${openelis_webapp_location} ${deployment_log_expression}",
    provider  => shell,
    path      => "${os_path}",
    require   => [File["${deployment_log_file}"], File["${openelis_webapp_location}"]],
    user      => "${bahmni_user}",
  }

  file { "${bahmni_openelis_temp_dir}" : ensure => absent, purge => true}

  exec { "bahmni_openelis_codebase" :
    provider => "shell",
    command   => "unzip -o -q ${build_output_dir}/OpenElis.zip -d ${temp_dir} ${deployment_log_expression}",
    path => "${os_path}",
    require   => [File["${bahmni_openelis_temp_dir}"]]
  }

  file { "${log4j_xml_file}" :
    ensure      => present,
    content     => template("openelis/log4j.xml.erb"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    require     => Exec["latest_openelis_webapp"],
    mode        => 664,
  }

  file { "${uploadedFilesDirectory}/elis" :
    ensure => directory,
    mode => 774,
    owner => "${bahmni_user}",
    group => "${bahmni_user}",
    require => File["${uploadedFilesDirectory}"],
  }

  if $is_passive_setup == "false" {
    include openelis::database
  }
}

class openelis::database {
    $bahmni_openelis_temp_dir = "${temp_dir}/OpenElis"

  file { "${bahmni_openelis_temp_dir}/scripts/initDB.sh":
    ensure => present,
    mode   => 777,
    require => [Exec["bahmni_openelis_codebase"]]
  }

  file { "${bahmni_openelis_temp_dir}/scripts/migrate_db.sh" :
    ensure      => present,
    content     => template("openelis/migrate_db.sh"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    require   => [Exec["bahmni_openelis_codebase"]],
    mode        => 554
  }
  exec { "openelis_initdb" :
    provider    => "shell",
    cwd         => "${bahmni_openelis_temp_dir}",
    command     => "scripts/initDB.sh bahmni-base.dump",
    require     => [File["${bahmni_openelis_temp_dir}/scripts/initDB.sh"]]
  }

  exec { "openelis_updatedb" :
    provider    => "shell",
    cwd         => "${bahmni_openelis_temp_dir}/liquibase",
    command     => "${bahmni_openelis_temp_dir}/scripts/migrate_db.sh",
    require     => [Exec["openelis_initdb"]]
  }
}
