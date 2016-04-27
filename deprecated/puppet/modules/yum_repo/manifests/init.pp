class yum_repo {
  require bootstrap

  notice("yum_repo manifest being executed... ")

  if ($create_local_repo == "true") {
    
    file { "local_repo" :
      path      => "/etc/yum.repos.d/local.repo",
      ensure    => present,
      content   => template("yum_repo/local.repo.erb"),
      mode      => 664
    }

    exec { "update" :
      command => "createrepo --update ${local_repo_path}",
      path    => "${os_path}",
      require => File["local_repo"]
    }

    exec { "touch" :
      command => "touch /etc/yum.repos.d/${local_repo_name}.repo",
      path    => "${os_path}",
      require => Exec["update"]
    }
  } else {

    file { "bahmni-tw-repo" :
      path    => "/etc/yum.repos.d/tw-bahmni.repo",
      ensure  => present,
      content => template("yum_repo/tw-bahmni.repo"),
      mode    => 664,
    }    

  }


  if ($keep_linux_repos_enabled == "true") {

    notice("keep_linux_repos_enabled = true")

    file { "/etc/yum.repos.d/CentOS-Base.repo" :
      source => "puppet:///modules/yum_repo/CentOS-Base.repo",
    }

    file { "/etc/yum.repos.d/epel.repo" :
      source => "puppet:///modules/yum_repo/epel.repo",
    }

    file { "/etc/yum.repos.d/pgdg-92-centos.repo" :
      source => "puppet:///modules/yum_repo/pgdg-92-centos.repo",
    }

} else {

    notice("keep_linux_repos_enabled = false")

  #  file {'/etc/yum.repos.d/local.repo':
  #    source => "puppet:///modules/bootstrap/local.repo"
  #  }

    file {["/etc/yum.repos.d/epel.repo", "/etc/yum.repos.d/puppetlabs.repo", "/etc/yum.repos.d/pgdg-92-centos.repo"]:
      ensure => absent,
    }      
  }

}