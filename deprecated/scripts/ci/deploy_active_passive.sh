#!/bin/bash

set -e

implementation_name=$1

export FACTER_bahmni_user_name=${FACTER_bahmni_user_name}
export FACTER_deploy_bahmni_openelis=${FACTER_deploy_bahmni_openelis}
export FACTER_deploy_bahmni_openerp=${FACTER_deploy_bahmni_openerp}
export SERVER_TYPE=${SERVER_TYPE}

if [ -z "$implementation_name" ]
then
	echo "Please Provide an implementation name"
	exit 1
fi

sudo fuser -k 8080/tcp || :
sudo -E sh bahmni_installer.sh --target /packages/build
sudo -E sh ${implementation_name}_config_installer.sh --target /packages/build
cp /bahmni_temp/logs/bahmni_deploy.log .

if [ ${SERVER_TYPE} = "ACTIVE" ] then
	#start the services
	sudo service tomcat start
	sudo service openerp restart
else
	sudo service tomcat stop
	sudo service openerp stop
fi

exit 0;