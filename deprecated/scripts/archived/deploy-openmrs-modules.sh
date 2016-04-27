#!/bin/bash

check_args() {
	if [ $# -lt 2 ]; then
	   echo "Usage: $0 admin-password modules"
	   exit 1
	fi	
}

login() {
	echo "curl -isS -c cookie.txt -d uname=admin -d pw=${1} $OPENMRS_URL/loginServlet"
	curl -isS -c cookie.txt -d uname=admin -d pw=${1} $OPENMRS_URL/loginServlet > login_response.txt
	cat login_response.txt
	check_if_login_is_successful
}

upload_from_local_file() {
	OMOD_FILE=$1
	if ! [ -f $OMOD_FILE ]; then
	   echo Error: module file $OMOD_FILE does not exist
	   exit 1
	fi
	echo "curl -isS -b cookie.txt -F action=upload -F update=true -F moduleFile=\@$OMOD_FILE $OPENMRS_URL/admin/modules/module.list"
	curl -isS -b cookie.txt -F action=upload -F update=true -F moduleFile=\@$OMOD_FILE $OPENMRS_URL/admin/modules/module.list > upload_response.txt	
	cat upload_response.txt
}

check_if_upload_success_full() {
	if  ! grep -q "modules/module.list" "upload_response.txt"; then
		echo "Failed to update module $1. Please check upload_response.txt and login_response.txt for more info"
		exit 1
	fi	
}

check_if_login_is_successful() {
	if grep -q "login.htm" "login_response.txt"; then
		echo "Failed to login as openmrs user 'admin'. Please verify the admin password. Check login_response.txt for more info"
		exit 1
	fi	
}

upload_from_http_url() {
	curl -isS -b cookie.txt -F action=upload -F download=true -F downloadURL=$1 $OPENMRS_URL/admin/modules/module.list > upload_response.txt
}

upload_module() {	
	echo "Uploading module $1"
	if [[ $1 =~ http:.* ]];	then
	   upload_from_http_url $1
	else
	   upload_from_local_file $1		
	fi
	check_if_upload_success_full $1
}

cleanup() {
	rm -rf cookie.txt login_response.txt upload_response.txt > /dev/null 2>&1	
}

upload_modules() {
	for module in $@
	do
		upload_module $module
	done
}

_main_() {
	set -e

	check_args $@
	login $1
	shift
	shift
	upload_modules $@
	cleanup
}

OPENMRS_URL=$2
_main_ $@