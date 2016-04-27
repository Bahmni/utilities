class maven {

	require users

	exec { "remove_maven" :
		command => "rm -rf /home/${bahmni_user}/apache-maven*",
		path 		=> "${os_path}",
		user 		=> "${bahmni_user}",
		creates   => "/home/${bahmni_user}/apache-maven*"

	}

	exec { "maven_untar" :
	  command => "tar zxf ${package_dir}/tools/apache-maven*.tar.gz ${deployment_log_expression}",
	  user    => "${bahmni_user}",
	  cwd     => "/home/${bahmni_user}",
	  creates => "${maven_home}",
	  path    => "${os_path}",
	  require => Exec["remove_maven"]
	}
}