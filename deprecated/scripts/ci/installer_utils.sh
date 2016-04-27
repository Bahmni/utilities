#!/bin/bash
function replace_installer_template {
	sed "s|{{RUN_DEPLOY_SCRIPT}}|$1|g" $INSTALLER_TEMPLATE > $INSTALLER_FILE
}

function create_installer {
	chmod +x $INSTALLER_FILE
	makeself.sh $ARTIFACTS_DIRECTORY $INSTALLER_FILE_NAME "$INSTALLER_LABEL" ./$BAHMNI_INSTALLER_FILE
}

