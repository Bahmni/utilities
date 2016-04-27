class nagios_remote_host {
  
  package { "nagios-plugins-all" :
    ensure  => "present"
  }
  
  package {"nrpe" : ensure => "installed"}

  service { "nrpe":
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
      require    => Package["nrpe"]
  }

  file { "/etc/nagios/nrpe.cfg":
    content     => template("nagios_remote_host/nrpe.cfg"),
    ensure      => present,
    owner       => "${nagios_user}",
    notify      => Service["nrpe"]
  }

}