class passive_to_active::mysql{

  notice("mysql switching from slave to master")

  package { "MySQL-server" :
    ensure  => present
  }

  service { "mysql" :
    ensure => running,
    enable => true,
    require => Package["MySQL-server"],
  }

  exec { "mysql-ro-off" :
    command     => "mysql -uroot -ppassword -e \"SET GLOBAL read_only=OFF\"",
    provider    => shell,
    user        => "root",
    require     => Service["mysql"],
  }

  exec { "stop-slave" :
    command     => "mysql -uroot -ppassword -e \"STOP SLAVE\"",
    provider    => shell,
    user        => "root",
    require     => Service["mysql-ro-off"],
  }

  exec {"reset-master":
    command => "mysql -uroot -ppassword -e \"RESET MASTER\"",
    provider => shell,
    user => "root",
    require => Exec["stop-slave"]
  }
}