#!/bin/bash -e
TEMP_SCRIPT_DIR=`dirname -- "$0"`
SCRIPT_DIR=`cd $TEMP_SCRIPT_DIR; pwd`
export SCRIPT_DIR

if [ $SCRIPT_DIR != "/packages/build" ]
then
        yes | cp -R $SCRIPT_DIR/* /packages/build
fi
chmod 755 /packages/build/*
unzip -qo bahmni-environment.zip -d /packages/build
/bin/sh /packages/build/bahmni-environment/scripts/{{RUN_DEPLOY_SCRIPT}}