class bahmni_databackup {
  file { "${backup_dir}" :
    ensure => directory,
    mode  => 666
  }

  file { "${backup_dir}/mysql_databackup.sh" :
    ensure      => present,
    content     => template("bahmni_databackup/mysql_databackup.sh.erb"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 554,
    require => File["${backup_dir}"]
  }

  cron { "backup_mysql" :
      command => "sh ${backup_dir}/mysql_databackup.sh 2>&1 >>${logs_dir}/backup_mysql.log",
      user    => "root",
      hour  => $backup_hour,
      require => File["${backup_dir}/mysql_databackup.sh", "${backup_dir}"]
  }
  
  file { "${backup_dir}/pgsql_databackup.sh" :
    ensure      => present,
    content     => template("bahmni_databackup/pgsql_databackup.sh.erb"),
    owner       => "${bahmni_user}",
    group       => "${bahmni_user}",
    mode        => 554,
    require => File["${backup_dir}"]
  }
  
  cron { "backup_postgres" :
       command => "sh ${backup_dir}/pgsql_databackup.sh 2>&1 >>${logs_dir}/backup_postgres.log",
       user    => "root",
       hour  => $backup_hour,
       require => File["${backup_dir}/pgsql_databackup.sh", "${backup_dir}"]
   }
   
   # Image replication/backup happens in bahmni_backup module
}