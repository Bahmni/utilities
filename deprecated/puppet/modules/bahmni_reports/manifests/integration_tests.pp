class bahmni_reports::integration_tests {
  $go_agent_home = "/var/go"
  $go_user = "go"

  file { "${go_agent_home}/.bahmni-reports" :
    ensure  => directory,
    owner   => "${go_user}",
    group   => "${go_user}",
    mode    => 554
  }

  file { "${go_agent_home}/.bahmni-reports/bahmni-reports.properties" :
    ensure  => present,
    content => template("bahmni_reports/bahmni-reports.properties.erb"),
    owner   => "${go_user}",
    group   => "${go_user}",
    mode    => 554
  }

  file { "${go_agent_home}/.bahmni-reports/bahmni-reports-test.properties" :
    ensure  => present,
    content => template("bahmni_reports/bahmni-reports-test.properties.erb"),
    owner   => "${go_user}",
    group   => "${go_user}",
    mode    => 554
  }
}