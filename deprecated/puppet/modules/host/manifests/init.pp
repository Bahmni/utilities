class host {
  $host_log_file = "${logs_dir}/bahmni_host.log"
  $host_log_expression = ">> ${host_log_file} 2>> ${host_log_file}"

  require yum_repo
  require nagios_remote_host

  file { "${temp_dir}" :
    ensure    => directory,
    recurse   => true,
    force     => true,
    purge     => true,
    mode      => 777,
  }

	file { "${temp_dir}/logs" :
		ensure 		=> directory,
    mode      => 777,
    require		=> File["${temp_dir}"]
	}

	file { "${package_dir}" :
		ensure 		=> directory,
		mode      => 777,
		recurse   => true
	}

  file { "${build_dir}" :
    ensure    => directory,
    mode      => 777,
    recurse   => true,
    require   => File["${package_dir}"]
  }

  package { "ntp" :
  	ensure => installed
  }

  exec { "ntp_service" :
  	command => "chkconfig ntpd on ${host_log_expression}",
  	path 		=> "${os_path}",
  	require	=> [Package["ntp"], File["${temp_dir}/logs"]]
  }

  # Execute ntpdate if pool.ntp.org is pingable (have internet) 
  exec { "time_clock_synchronized" :
  	command => "ntpdate -u pool.ntp.org ${host_log_expression}",
  	path 		=> "${os_path}",
  	require	=> [Exec["ntp_service"], File["${temp_dir}/logs"]],
    onlyif  => "ping -c1 pool.ntp.org"
  }

  service { "ntpd" :
  	ensure => running,
  	require => Exec["time_clock_synchronized"]
  }
}