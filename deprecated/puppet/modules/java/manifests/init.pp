class java {
  require yum_repo

  $java_home = "/usr/java/default"

  package { "jdk" :
    ensure => installed
  }

  file { "jdk_home_path" :
    path    => "/etc/profile.d/java.sh",
    ensure  => present,
    content => template ("java/java.sh"),
    mode    => 664,
    require => Package["jdk"]
  }
}