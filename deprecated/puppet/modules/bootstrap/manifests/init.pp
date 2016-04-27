class bootstrap {

  package { "createrepo" :
    ensure => present;
  }

  file { "/etc/yum.conf":
    source => "puppet:///modules/bootstrap/yum.conf",
    require => Package["createrepo"]
  }
    
}