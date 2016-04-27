#!/bin/sh
SCRIPT_DIR=`dirname $0`
OPENMRS_DB=$1
OPENELIS_DB=$2
OPENERP_DB=$3

if [ -z $OPENMRS_DB ] || [ -z $OPENELIS_DB ] || [ -z $OPENERP_DB ]; then
    echo "[USAGE] $0 <openmrsDB> <openelisDB> <openerpDB>"
    exit 1
fi

cd $SCRIPT_DIR

set -e -x

sudo rm -f /tmp/openmrs_patient.csv
mysql -uroot -ppassword $OPENMRS_DB < deidentify_openmrs.sql

psql -Uclinlims -d$OPENELIS_DB -f deidentify_openelis.sql
psql -Upostgres -d$OPENELIS_DB -f copy_openmrs_patient_data_to_openelis.sql

psql -Upostgres -d$OPENERP_DB -f deidentify_openerp.sql
psql -Upostgres -d$OPENERP_DB -f copy_openmrs_patient_data_to_openerp.sql

sudo rm -f /tmp/openmrs_patient.csv