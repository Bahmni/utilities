class bahmni_landing_page {

  exec { "copy_bahmni_landing_page" :
    command     => "cp ${build_output_dir}/index.html ${$httpd_deploy_dir}/html",
    path        => "${os_path}",
  }

}
