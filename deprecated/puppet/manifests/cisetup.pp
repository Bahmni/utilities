import "configurations/node-configuration"
import "configurations/stack-installers-configuration"
import "configurations/stack-runtime-configuration"
import "configurations/deployment-configuration"
import "configurations/cisetup-configuration"


node default {

  stage { "first" : }

  stage { "deploy" : }
  stage { "last" : }

  Stage['first'] -> Stage['main'] -> Stage['deploy'] -> Stage['last']

  class { "bootstrap": stage => 'first'; }
  class { "yum_repo":  stage => 'first'; }
  class { "host":      stage => 'first'; }
  class { "users":
       stage         => "first",
       userName      => "${bahmni_user}", 
       password_hash => "${bahmni_user_password_hash}"
  }

  include tools
  include java    
  include mysql
  include mysqlserver
  include tomcat
  class { 'tomcat_conf': require => Class["tomcat"] }
  include httpd
  include jasperserver
  include python
  include postgresql
  include openerp

  class { "openmrs" : stage => "deploy"; }
  class { "bahmni_configuration" : stage => "deploy"; }
  class { "bahmni_omods" : stage => "deploy"; }
  class { "bahmni_openerp" : stage => "deploy"; }
  class { "registration" : stage => "deploy"; }

  class { "nodejs" : stage => "last", version => '0.8.19'; }
  class { "bahmni_openerp_basedata" : stage => "last"; }
  class { "maven" : stage => "last"; }
  class { "ci_tools" : stage => "last"; }
  class { "go_setup" : stage => "last"; }
}

