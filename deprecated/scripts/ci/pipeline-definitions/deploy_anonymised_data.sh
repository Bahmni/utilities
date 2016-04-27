#!/bin/bash

pushd `dirname $0` > /dev/null
CURR_DIR=`pwd -P`
popd > /dev/null

SCRIPTS_DIR="${CURR_DIR}"/../../
DUMP_DIR="/tmp/anonymised_dump"
IMPLEMENTATION_NAME=$1
AWS_ACCESS_KEY=$2
AWS_SECRET_KEY=$3

if [ "$#" -ne 3 ]; then
    echo "Please provide all required arguments"
    echo "[USAGE] $0 <IMPLEMENTATION_NAME> <AWS_KEY> <AWS_SECRET>"
    exit 1
fi

if [ -z ${FACTER_deploy_bahmni_openelis} ] || [ -z ${FACTER_deploy_bahmni_openerp} ]; then
    echo "Please set all the required environment variables (FACTER_deploy_bahmni_openelis, FACTER_deploy_bahmni_openerp) before executing the script"
    exit 1;
fi

mkdir -p $DUMP_DIR
rm -rf $DUMP_DIR/*

bash -x $SCRIPTS_DIR/ci/pipeline-definitions/get_file_from_aws.sh $IMPLEMENTATION_NAME anonymised_openmrs.sql.gz ${DUMP_DIR} $AWS_ACCESS_KEY $AWS_SECRET_KEY
bash -x $SCRIPTS_DIR/ci/pipeline-definitions/get_file_from_aws.sh $IMPLEMENTATION_NAME anonymised_clinlims.sql.gz ${DUMP_DIR} $AWS_ACCESS_KEY $AWS_SECRET_KEY
bash -x $SCRIPTS_DIR/ci/pipeline-definitions/get_file_from_aws.sh $IMPLEMENTATION_NAME anonymised_openerp.sql.gz ${DUMP_DIR} $AWS_ACCESS_KEY $AWS_SECRET_KEY

gunzip ${DUMP_DIR}/*.gz
if [ ! -f $DUMP_DIR/anonymised_openmrs*.sql ]; then
   echo "No openmrs dump found"
   rm -rf $DUMP_DIR/*
   exit 1
fi

if  [ ${FACTER_deploy_bahmni_openelis} == "true" ]; then
  if [ ! -f ${DUMP_DIR}/anonymised_clinlims*.sql ]; then
    echo "No openelis dump found"
    rm -rf $DUMP_DIR/*
    exit 1
  fi
fi

if [ ${FACTER_deploy_bahmni_openerp} == "true" ]; then
  if [ ! -f ${DUMP_DIR}/anonymised_openerp*.sql ]; then
    echo "No openerp dump found"
    rm -rf $DUMP_DIR/*
    exit 1
  fi
  sudo service openerp stop
fi

# we are not checking whether the above processess exit or not, bcoz the service scripts already does it
sudo service tomcat stop
mysql -uroot -ppassword -e "drop database if exists openmrs"
mysql -uroot -ppassword -e "create database openmrs"
mysql -uroot -ppassword -e "GRANT ALL PRIVILEGES ON openmrs.* TO 'openmrs-user'@'%'";
mysql -uroot -ppassword openmrs < $DUMP_DIR/anonymised_openmrs*.sql

if [ ${FACTER_deploy_bahmni_openelis} == "true" ]; then
    psql -Upostgres -c "drop database if exists clinlims;";
    psql -Upostgres -c "create database clinlims;";
    psql -Upostgres -d clinlims < $DUMP_DIR/anonymised_clinlims*.sql
fi

if [ ${FACTER_deploy_bahmni_openerp} == "true" ]; then
    psql -Upostgres -c "drop database if exists openerp;";
    psql -Upostgres -c "create database openerp;";
    psql -Upostgres -d openerp < $DUMP_DIR/anonymised_openerp*.sql
    sudo service openerp start
fi

sudo service tomcat start
echo "Started Tomcat"
rm -rf $DUMP_DIR/*
exit 0;