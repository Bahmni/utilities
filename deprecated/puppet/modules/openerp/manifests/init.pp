class openerp {
  $openerp_temp = "${temp_dir}/openerp"
  $log_file = "${logs_dir}/openerp-module.log"
  $log_expression = ">> ${log_file} 2>> ${log_file}"

  file { "${log_file}" : ensure => absent, purge => true}
  file { "${openerp_temp}" : ensure => directory, mode => 744}

  notify { "Creating file ${openerp_temp}/install_openerp.sh" :}

  file { "${openerp_temp}/install_openerp.sh" :
    ensure      => present,
    content     => template("openerp/install_openerp.erb"),
    mode        => 554,
    require     => [File["${log_file}"], File["${openerp_temp}"]]
  }

  exec { "openerp_installed" :
    provider    => shell,
    command     => "sh install_openerp.sh ${packages_servers_dir} ${openerp_installer_file} ${log_expression}",
    timeout     => 300,
    path        => "${os_path}",
    require     => File["${openerp_temp}/install_openerp.sh"],
    cwd         => "${openerp_temp}",
  }
  
  file { "/etc/init.d/openerp" :
      ensure      => present,
      content     => template("openerp/openerp.initd.erb"),
      mode        => 777,
      group       => "root",
      owner       => "root",
      require     => Exec["openerp_installed"],
  }

  service { "openerp":
    enable    => true,
    ensure    => "running",
    require   => File["/etc/init.d/openerp"],
  }  
}