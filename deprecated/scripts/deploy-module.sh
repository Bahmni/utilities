#!/bin/bash

SCRIPTS_DIR=`dirname $0`
BASE_DIR=$SCRIPTS_DIR/..

usage() {
	echo "Usage: run-module.sh <module-name>"
	echo "<module-name> is the name of a puppet module present in ${BASE_DIR}/puppet/modules directory"
}

####################################################################
# Checking if env variable ENV_CREATE_LOCAL_REPO is set

if [ "${ENV_CREATE_LOCAL_REPO}a" != "a" ]
then
	export FACTER_env_create_local_repo=$ENV_CREATE_LOCAL_REPO
	echo "Setting env_create_local_repo=${FACTER_env_create_local_repo}"
else
	echo "Not setting env_create_local_repo. Puppet default will be used."
fi

####################################################################

####################################################################
# Note that you should invoke this script with sudo -E (so that environment variables are passed to this script)

MODULE_NAME=$1
if [ "${MODULE_NAME}a" = "a" ]
then
	echo "Please specify a module to run)"
	usage
	exit 1
fi

FACTER_module_to_run=$MODULE_NAME puppet apply $BASE_DIR/puppet/manifests/run.pp  --modulepath=$BASE_DIR/puppet/modules/  --detailed-exitcodes
RETURN_CODE=$?
if [ $RETURN_CODE -ne 0 ] && [ $RETURN_CODE -ne 2 ]
then
	echo "Error running script. Return code = ${RETURN_CODE}. Exiting"
	exit 1
else
	echo "All fine. Return code = ${RETURN_CODE}. Exiting"
	exit 0
fi
