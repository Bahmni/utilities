class bahmni_client_side_logging() {
  file { "${python_site_packages}${client_side_logging}" :
    ensure  => "directory",
    source  => "${build_dir}/${client_side_logging}",
    owner   => "${bahmni_user}",
    recurse => "true",
  }

  file { "${httpd_deploy_dir}/${client_side_logging}" :
    ensure  => "directory",
    source  => "${build_dir}/${client_side_logging}",
    owner   => "${bahmni_user}",
    recurse => "true",
  }
}