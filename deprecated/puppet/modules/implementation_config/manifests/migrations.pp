define implementation_config::migrations($implementation_name, $app_name) {
  $migrations_directory = "${build_output_dir}/${implementation_name}_config/${app_name}/migrations"

  if $is_passive_setup == "false" {
    file { "${temp_dir}/run-implementation-${app_name}-liquibase.sh" :
      ensure      => present,
      content     => template("implementation_config/run-implementation-${app_name}-liquibase.sh"),
      owner       => "${bahmni_user}",
      group       => "${bahmni_user}",
      mode        => 554
    }

    exec { "run_${app_name}_implementation_liquibase_migration" :
      command     => "${temp_dir}/run-implementation-${app_name}-liquibase.sh  ${deployment_log_expression}",
      path        => "${os_path}",
      provider    => shell,
      cwd         => "${migrations_directory}",
      require     => File["${temp_dir}/run-implementation-${app_name}-liquibase.sh"],
      onlyif      => "test -f ${migrations_directory}/liquibase.xml"
    }
  }
}