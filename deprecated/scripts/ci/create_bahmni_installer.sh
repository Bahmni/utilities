#/bin/bash
TEMP_SCRIPT_DIR=`dirname -- "$0"`
SCRIPT_DIR=`cd $TEMP_SCRIPT_DIR; pwd`
export SCRIPT_DIR

export ARTIFACTS_DIRECTORY=$1
export INSTALLER_FILE_NAME=$2"_"$GO_PIPELINE_COUNTER".sh"
export INSTALLER_LABEL=$3
export BAHMNI_INSTALLER_FILE=bahmni_deploy.sh
export INSTALLER_FILE=$ARTIFACTS_DIRECTORY/bahmni_deploy.sh

source $SCRIPT_DIR/installer_utils.sh

function usage {
	echo "Usage: create_installer.sh ARCHIVE_DIRECTORY FILE_NAME LABEL"
}

if [ $# -ne 3 ]
then
	usage
	exit 1
fi

create_installer
mkdir -p installer
mv $INSTALLER_FILE_NAME installer/