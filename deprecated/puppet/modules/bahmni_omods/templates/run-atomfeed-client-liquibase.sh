#!/bin/sh

SCRIPT_DIR=`dirname $0`
source $SCRIPT_DIR/openmrs-liquibase-functions.sh

set -e -x
run_atomfeed_client_liquibase <%= @atomfeed_client_omod_name %>