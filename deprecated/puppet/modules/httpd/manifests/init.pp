# This class as of now ensures httpd installed and running
# Project specific rules need to be inserted manually into httpd.conf and ssl.conf

class httpd {
  $apache_user = "apache"
  require yum_repo
  include client_side_logging


  package { "httpd" :
    ensure => "present"
  }

  user { $apache_user :
    groups  => [$apache_user, $bahmni_user],
    require => Package["httpd"]
  }

  exec { "httpd_conf_backup" :
    cwd         => "/etc/httpd/conf",
    command     => "mv httpd.conf httpd.conf.bkup",
    path        => "${os_path}",
    require     => Package["httpd"],
  }

  file { "/etc/httpd/conf/httpd.conf" :
    content      => template("httpd/httpd.conf.erb", "httpd/httpd.conf.redirects.erb"),
    require      => Exec["httpd_conf_backup"],
    notify       => Service["httpd"],
  }

  service { "httpd" :
    ensure      => running,
    enable      => true,
    require     => Package["httpd"]
  }

  package { "mod_ssl" :
    ensure      => present,
    require     => File["/etc/httpd/conf/httpd.conf"],
  }

  file { "/etc/httpd/conf.d/ssl.conf" :
    content      => template("httpd/ssl.conf.erb"),
    require      => [Class["client_side_logging"]],
    notify       => Service["httpd"],
  }

  exec { "clean_${httpdCacheDirectory}" :
    command => "rm -rf ${httpdCacheDirectory}",
    path    => "${os_path}"
  }

  file { "${httpdCacheDirectory}" :
    ensure  => directory,
    owner   => "${apache_user}",
    group   => "${apache_user}",
    require => Exec["clean_${httpdCacheDirectory}"]
  }

  file { "${temp_dir}/iptables.sh" :
    content => template("httpd/iptables.sh.erb"),
    require => Service["httpd"]
  }

  exec { "iptables" :
    command     => "sh ${temp_dir}/iptables.sh",
    path        => "${os_path}",
    require     => File["${temp_dir}/iptables.sh"],
  }
}