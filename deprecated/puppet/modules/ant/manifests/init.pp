class ant {
	exec { "remove_ant" :
		command => "rm -rf /home/${bahmni_user}/apache-ant*",
		path 		=> "${os_path}",
		user 		=> "${bahmni_user}"
	}

	exec { "ant_untar" :
	  command => "tar zxf ${package_dir}/tools/apache-ant-${ant_version}-bin.tar.gz ${deployment_log_expression}",
	  user    => "${bahmni_user}",
	  cwd     => "/home/${bahmni_user}",
	  creates => "${ant_home}",
	  path    => "${os_path}",
	  require => Exec["remove_ant"]
	}

  file { "ant_home_path" :
  	path    => "/etc/profile.d/ant.sh",
	  ensure  => present,
	  content => template ("ant/ant.sh"),
	  mode    => 664,
	  require => Exec["ant_untar"]
	}


  exec { "set_permissions_of_ant" :
    provider => "shell",
    command => "chmod -R  777 /home/${bahmni_user}/apache-ant-${ant_version}",
    path => "${os_path}",
    require => Exec["ant_untar"]
  }
}