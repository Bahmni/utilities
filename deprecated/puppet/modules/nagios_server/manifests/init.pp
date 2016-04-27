class nagios_server {
  
    require yum_repo
  
    package { "nagios" :
        ensure  =>  "present"
    }

    package { "nagios-plugins-nrpe" :
        ensure  => "present"
    }

    package { "mailx" :
        ensure  =>  "present"
    }

    file { "/usr/lib64/nagios/plugins/check_postgres.pl":
        source      => "puppet:///modules/nagios_server/nagios-plugins/check_postgres.pl",
        owner       => "${nagios_user}",
        group       => "${nagios_user}",
        mode        =>  555,
        require    => Package["nagios-plugins-nrpe"]
    }

    file { "/usr/lib64/nagios/plugins/check_exit_status.pl":
        source      => "puppet:///modules/nagios_server/nagios-plugins/check_exit_status.pl",
        owner       => "${nagios_user}",
        group       => "${nagios_user}",
        mode        =>  555,
        require    => Package["nagios-plugins-nrpe"]
    }

    file { "/usr/lib64/nagios/plugins/check_scheduled_tasks.py":
        source      => "puppet:///modules/nagios_server/nagios-plugins/check_scheduled_tasks.py",
        owner       => "${nagios_user}",
        group       => "${nagios_user}",
        mode        =>  555,
        require    => Package["nagios-plugins-nrpe"]
    }    
}