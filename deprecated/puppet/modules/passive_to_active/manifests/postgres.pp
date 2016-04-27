class passive_to_active::postgres {

  $postgresPackageName = "postgresql${postgresMajorVersion}${postgresMinorVersion}"
  $postgresLibsPackageName = "${postgresPackageName}-libs"
  $postgresServerPackageName = "${postgresPackageName}-server"
  $postgresContribPackageName = "${postgresPackageName}-contrib"

  package { "${postgresLibsPackageName}" : ensure => installed}
  package { "${postgresServerPackageName}" : ensure => installed, require => Package["${postgresLibsPackageName}"]}
  package { "${postgresPackageName}" : ensure => installed, require => Package["${postgresServerPackageName}"]}
  package { "${postgresContribPackageName}" : ensure => installed, require => Package["${postgresPackageName}"]}

  notice("postgresql switching from slave to master")

  service {"${postgresServiceName}" :
    ensure      => running,
    enable      => true
  }

  exec { "switch-to-master" :
    command => "/usr/pgsql-9.2/bin/pg_ctl promote -D ${postgresDataFolder}",
    path => "${os_path}",
    user => "postgres",
    require     => Service["${postgresServiceName}"]
  }
}