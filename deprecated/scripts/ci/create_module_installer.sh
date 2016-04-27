#/bin/bash
TEMP_SCRIPT_DIR=`dirname -- "$0"`
SCRIPT_DIR=`cd $TEMP_SCRIPT_DIR; pwd`
export SCRIPT_DIR

export ARTIFACTS_DIRECTORY=$1
export INSTALLER_FILE_NAME=$2
export INSTALLER_LABEL=$3
export COMMAND=$4
export BAHMNI_INSTALLER_FILE=installer.sh
export INSTALLER_FILE=$ARTIFACTS_DIRECTORY/$BAHMNI_INSTALLER_FILE
export INSTALLER_TEMPLATE=$SCRIPT_DIR/$BAHMNI_INSTALLER_FILE.template

source $SCRIPT_DIR/installer_utils.sh

function usage {
	echo "Usage: create_installer.sh ARCHIVE_DIRECTORY FILE_NAME LABEL COMMAND"
}

if [ $# -ne 4 ]
then
	usage
	exit 1
fi

replace_installer_template "run-puppet-module.sh $COMMAND"
create_installer