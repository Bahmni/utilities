#!/bin/bash

GO_USER=guest
GO_PWD=p@ssw0rd
BASE_URL="http://172.18.2.11:8153"
ping -q -c1 172.18.2.11
LOCAL_SERVER=$?
if [ $LOCAL_SERVER -ne 0 ]
	then
	BASE_URL="https://ci-bahmni.thoughtworks.com"
fi

BRANCH=v0_81
ARTIFACTS_PIPELINE_VERSION="Latest"
CONFIG_PIPELINE_VERSION="Latest"

BUILD_NUMBER=`wget --timeout=3600 --no-check-certificate --user=$GO_USER --password=$GO_PWD --auth-no-challenge  $BASE_URL/go/files/Bahmni_artifacts_$BRANCH/$ARTIFACTS_PIPELINE_VERSION/CollectArtefactsStage/Latest/defaultJob/installer/ -O - -o /dev/null | grep "^bahmni_installer_" | sed "s/bahmni_installer_//g"`
echo "-----------------------"
echo "Downloading bahmni_installer_"$BUILD_NUMBER" to /packages/build folder"
wget --timeout=3600 --no-check-certificate --user=$GO_USER --password=$GO_PWD --auth-no-challenge  $BASE_URL/go/files/Bahmni_artifacts_$BRANCH/$ARTIFACTS_PIPELINE_VERSION/CollectArtefactsStage/Latest/defaultJob/installer/bahmni_installer_$BUILD_NUMBER -O /packages/build/bahmni_installer.sh

CONFIG_BUILD_NUMBER=`wget --timeout=3600 --no-check-certificate --user=$GO_USER --password=$GO_PWD --auth-no-challenge  $BASE_URL/go/files/Build_${FACTER_implementation_name}_config_$BRANCH/$CONFIG_PIPELINE_VERSION/Package/Latest/package/installer/ -O - -o /dev/null | grep "^"${FACTER_implementation_name}"_config_installer_" | sed "s/"${FACTER_implementation_name}"_config_installer_//g"`
echo "-----------------------"
echo "Downloading "${FACTER_implementation_name}"_config_installer_"$CONFIG_BUILD_NUMBER" to /packages/build folder"
wget --timeout=3600 --no-check-certificate --user=$GO_USER --password=$GO_PWD --auth-no-challenge  $BASE_URL/go/files/Build_${FACTER_implementation_name}_config_$BRANCH/$CONFIG_PIPELINE_VERSION/Package/Latest/package/installer/${FACTER_implementation_name}_config_installer_$CONFIG_BUILD_NUMBER -O /packages/build/${FACTER_implementation_name}_config_installer.sh
