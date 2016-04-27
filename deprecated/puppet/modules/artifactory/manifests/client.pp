class artifactory::client {
    file { "${m2_folder}/settings.xml" :
      ensure      => present,
      content     => template("artifactory/client/settings.xml.erb"),
      owner       => "${maven_user}",
      group       => "${maven_user}",
      mode        => 644,
    }
}