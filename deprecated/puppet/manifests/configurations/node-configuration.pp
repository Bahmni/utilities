$temp_dir = "/bahmni_temp"
$logs_dir = "${temp_dir}/logs"
$package_dir = "/packages"
$backup_dir = "/backup"
$os_path = "/sbin:/bin:/usr/sbin/:/usr/bin:/usr/local/bin:/usr/local/sbin"
$local_repo_path = "${package_dir}/localrepo"
$packages_servers_dir = "${package_dir}/servers"
$python_package_dir = "${package_dir}/python-packages"
$local_repo_name = "local"
$scripts_dir = "/root/scripts"
$build_dir = "${package_dir}/build"
$create_local_repo = $env_create_local_repo ? {
      undef			=> 'true',
      default       => $env_create_local_repo
}
$bahmni_yum_repo_url = $go_bahmni_yum_repo_url ? {
      undef			=> 'http://172.18.2.14/localrepo',
      default       => $go_bahmni_yum_repo_url
}