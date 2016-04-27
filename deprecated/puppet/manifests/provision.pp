import "configurations/node-configuration"
import "configurations/stack-installers-configuration"
import "configurations/stack-runtime-configuration"
import "configurations/deployment-configuration"

stage { 'first_stage' : before => Stage['main'] }

node default {

  class { 'yum_repo': stage => 'first_stage' }
  class { 'selinux': stage => 'first_stage' }
  include host
  include tools
  include java
  include mysql

  class { 'users' : userName => "${bahmni_user}", password_hash => "${bahmni_user_password_hash}" }

  include cron_tab

  if ($install_server_type == "app-server" or $install_server_type == "single-server") {
    class { 'python_setuptools': stage => 'first_stage' }
    include tomcat
    class { 'tomcat_conf': require => Class["tomcat"] }
    class { 'httpd' : require => Class['users'] }
    if $bahmni_openerp_required == "true" {
      include python
      class { 'openerp': require => Class["python", "postgresql"] }
    }

    if ($bahmni_pacs_required == "true") {
      include dcm4chee
    }
  }

  if ($install_server_type == "db-server" or $install_server_type == "single-server") {
    include mysqlserver
    if ($bahmni_openerp_required == "true") or ($bahmni_openelis_required == "true") or ($bahmni_pacs_required == "true") {
      include postgresql
    }
  }

  if ($install_server_type == "monitoring-server") {
    include bahmni_nagios_server
  }

  if ($install_server_type == "jasper-server") {
    class { 'jasperserver': require => Class["tomcat"] }
  }
}