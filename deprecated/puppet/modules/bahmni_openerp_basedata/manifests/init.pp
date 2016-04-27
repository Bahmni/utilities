class bahmni_openerp_basedata {
	$log_file = "${logs_dir}/bahmni_openerp_basedata.log"
  $log_expression = ">> ${log_file} 2>> ${log_file}"

	file { "${temp_dir}/create-database.sh" :
    path    		=> "${temp_dir}/create-database.sh",
    content     => template("bahmni_openerp_basedata/create-database.sh"),
	  ensure      => present,
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
	  mode        => 554
	}

	exec { "openerp_database" :
    provider    => shell,
    command     => "sh create-database.sh ${log_expression}",
    path        => "${os_path}",
    cwd         => "${temp_dir}",
    require			=> File["${temp_dir}/create-database.sh"]
	}

	# exec { "openerp_base_data" :
	# 	command => "psql openerp < ${package_dir}/data-dump/${openerp_base_data_dump} ${log_expression}",
	# 	user    => "postgres",
	# 	path 		=> "${os_path}",
	# 	require	=> Exec["openerp_database"]
	# }
  exec { "openerp_base_data_for_ci" :
    command => "psql -U openerp openerp < ${packages_servers_dir}/bahmni-openerp-base-data.sql",
    user    => "postgres",
    path    => "${os_path}",
    require => Exec["openerp_database"]
  }  
}