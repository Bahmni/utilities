#!/bin/sh
set -e -x

if [ $FACTER_deploy_bahmni_openerp = "true" ]; then
	service openerp start
fi
service tomcat start
service httpd start