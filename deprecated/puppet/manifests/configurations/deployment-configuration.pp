$build_output_dir = "${package_dir}/build"

$deployment_log_file = "${logs_dir}/bahmni_deploy.log"
$deployment_log_expression = ">> ${deployment_log_file} 2>> ${deployment_log_file}"

$bahmni_openerp_branch = "master"
$bahmni_openerp_temp_dir = "${temp_dir}/bahmni-openerp"
$openerp_base_data_dump = "bahmni-openerp-base-data.sql"
$jss_registration_csv = "RegistrationMaster.csv"
$client_side_logging = "client_side_logging"
$number_of_migrator_threads = 1
$add_email_appender = false

file { "${deployment_log_file}" :
  ensure      => present,
  owner       => "${bahmni_user}",
  group       => "${bahmni_user}",
  mode        => 666,
  content     => "",
}