#!/bin/sh

SCRIPT_DIR=`dirname $0`
source $SCRIPT_DIR/openmrs-liquibase-functions.sh

set -e -x

run_openmrs_dependent_liquibase <%= @openmrs_modules_dir %>/<%= @bahmni_core %>.omod migrations/dependent-modules/liquibase.xml
run_omod_liquibase <%= @openmrs_atomfeed %>
run_omod_liquibase <%= @openmrs_appframework %>
run_omod_liquibase <%= @openmrs_calculation %>
run_omod_liquibase <%= @openmrs_metadatamapping %>
run_omod_liquibase <%= @openmrs_providermanagement %>
run_omod_liquibase <%= @openmrs_uiframework %>
run_omod_liquibase <%= @bahmni_core %>