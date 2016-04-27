class bahmni_nagios_cfg {
  
    require nagios_server

    file { "/etc/nagios/objects":
        ensure      => directory,
        recurse     => true,
        owner       => "${nagios_user}",
        require     => Class["nagios_server"]
    }

    file { "/etc/nagios/objects/windows.cfg":
      ensure      => absent,
      require     => Class["nagios_server"]
    }

    file { "/etc/nagios/objects/printer.cfg":
        ensure      => absent,
        require     => Class["nagios_server"]
    }

    file { "/etc/nagios/objects/switch.cfg":
        ensure      => absent,
        require     => Class["nagios_server"]
    }

    file { "/etc/nagios/objects/localhost.cfg":
        content     => template("bahmni_nagios_server/localhost-${implementation_name}.cfg"),
        ensure      => present,
        owner       => "${nagios_user}",
        notify      => Service["nagios"],
        require     => File["/etc/nagios/objects"],
    }
    
    file { "/etc/nagios/objects/commands.cfg":
        content     => template("bahmni_nagios_server/commands.cfg"),
        ensure      => present,
        owner       => "${nagios_user}",
        notify      => Service["nagios"],
        require     => File["/etc/nagios/objects"]
    }

    file { "/etc/nagios/objects/contacts.cfg":
        content     => template("bahmni_nagios_server/contacts.cfg"),
        ensure      => present,
        owner       => "${nagios_user}",
        notify      => Service["nagios"],
        require     => File["/etc/nagios/objects"]
    }

    file { "/etc/nagios/objects/templates.cfg":
        content     => template("bahmni_nagios_server/templates.cfg"),
        ensure      => present,
        owner       => "${nagios_user}",
        notify      => Service["nagios"],
        require     => File["/etc/nagios/objects"]
    }

    file { "/etc/nagios/objects/timeperiods.cfg":
        content     => template("bahmni_nagios_server/timeperiods.cfg"),
        ensure      => present,
        owner       => "${nagios_user}",
        notify      => Service["nagios"],
        require     => File["/etc/nagios/objects"]
    }
}


class bahmni_nagios_server {
  
    require nagios_server
    require bahmni_nagios_cfg

    if $active_machine_ip == undef { fail("Active machine ip cannot be empty.") }

    service { "nagios":
      enable => true,
      ensure => running
    }
  
    exec { "setup_object_files_in_config" :
        command => "sed -i 's/^cfg_file\s*=.*$//g' /etc/nagios/nagios.cfg && find /etc/nagios/objects -name \\*cfg | sed 's/\\(.*\\)/cfg_file=\\1/g' >> /etc/nagios/nagios.cfg",
        path    => "${os_path}",
        require => Class["bahmni_nagios_cfg"],
        notify  => Service["nagios"],
    }

    package { "perl-Time-HiRes":
        ensure => installed,
    }
}