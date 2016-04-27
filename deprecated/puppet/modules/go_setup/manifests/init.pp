class go_setup {
  require maven
  require ci_tools

  package { "go-server" :
    ensure => present;
  }

  package { "go-agent" :
    ensure => present,
    require => Package["go-server"],
  }

  user { "go" :
    ensure      => present,
    # add 'go' user to 'jss' and 'openerp' group.
    # adding 'go' to 'rvm' group, otherwise `bundle install` needs password.
    groups      => ["${bahmni_user}", "${openerpGroup}", "rvm"], 
    require     => Package["go-agent"],
  }

  # ensure that you have copied the latest cruise-config file as the erb has not been kept in sync
  file { "/etc/go/cruise-config.xml" :
    ensure    => present,
    content   => template("go_setup/preprod-cruise-config.xml.erb"),
    replace   => true,
    mode      => 666,
    require   => Package["go-server", "go-agent"]
  }

  file { "/etc/hosts" :
    ensure  => present,
    content => template("go_setup/hosts"),
    replace => true,
  }

  service { "go-server" :
    ensure      => running,
    enable      => true,
    require     => File["/etc/go/cruise-config.xml"]
  }

  service { "go-agent" :
    ensure      => running,
    enable      => true,
    require     => Service["go-server"]
  }

}