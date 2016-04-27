#!/bin/sh
SCRIPT_DIR=`dirname $0`

cd $SCRIPT_DIR

set -e -x

sudo rm -f /tmp/openmrs_patient.csv
mysql -uroot -ppassword openmrs < deidentify_openmrs.sql

psql -Uclinlims -f deidentify_openelis.sql
psql -Upostgres -dclinlims -f copy_openmrs_patient_data_to_openelis.sql

psql -Uopenerp -f deidentify_openerp.sql
psql -Upostgres -dopenerp -f copy_openmrs_patient_data_to_openerp.sql

sudo rm -f /tmp/openmrs_patient.csv