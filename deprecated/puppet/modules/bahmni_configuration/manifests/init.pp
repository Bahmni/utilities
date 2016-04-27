# This class only has the configuration setup for bahmni core and registration
# The module installation is in /deploy folder
class bahmni_configuration {
  $bahmnicore_properties = "/home/${bahmni_user}/.OpenMRS/bahmnicore.properties"

  file { "${patientImagesDirectory}" :
    ensure      => directory,
    mode        => 774,
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
  }

  file { "${uploadedResultsDirectory}" :
    ensure      => directory,
    mode        => 774,
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
  }

  file { "${documentBaseDirectory}" :
    ensure => directory,
    mode   => 774,
    owner  => "${bahmni_user}",
    group  => "${bahmni_user}",
  }

  exec { "change_group_rights_for_document_images_content" :
    provider => "shell",
    command => "chown -R ${bahmni_user}:${bahmni_user} ${documentBaseDirectory}; chmod -R 774 ${documentBaseDirectory}; ",
    path => "${os_path}",
    require => File["${documentBaseDirectory}"]
  }

  file { "${uploadedFilesDirectory}" :
    ensure => directory,
    mode   => 774,
    owner  => "${bahmni_user}",
    group  => "${bahmni_user}",
  }

  file { ["${uploadedFilesDirectory}/mrs"] :
    ensure => directory,
    mode   => 774,
    owner  => "${bahmni_user}",
    group  => "${bahmni_user}",
    require => File["${uploadedFilesDirectory}"],
  }

  file { "${httpd_deploy_dir}/patient_images" :
    ensure  => "link",
    target  => "${patientImagesDirectory}",
    require => File["${patientImagesDirectory}"],
  }

  file { "${bahmnicore_properties}" :
    ensure      => present,
    content     => template("bahmni_configuration/bahmnicore.properties.erb"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 664
  }
}
