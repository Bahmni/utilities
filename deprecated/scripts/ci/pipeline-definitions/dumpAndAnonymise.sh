#!/bin/bash

rootPassword=$1
IMPLEMENTATION_NAME=$2
AWS_ACCESS_KEY=$3
AWS_SECRET_KEY=$4
souceIP=$5

set -e -x

pushd `dirname $0` > /dev/null
CURR_DIR=`pwd -P`
popd > /dev/null

SCRIPT_DIR=${CURR_DIR}/../../
cd $SCRIPT_DIR

TIME=`date +%Y%m%d_%H%M%S`
BACKUP_DIR=${6:-/tmp/backup/anonymised_backup_$TIME}
mkdir -pv $BACKUP_DIR

OPENMRS_NEW_DB=anonymised_openmrs_$TIME
OPENELIS_NEW_DB=anonymised_clinlims_$TIME
OPENERP_NEW_DB=anonymised_openerp_$TIME

if [ -z $rootPassword ]; then
    echo "Please provide a password for mysql root"
    echo "[USAGE] $0 <mysqlRootPassword> <IMPLEMENTATION_NAME> <AWS_KEY> <AWS_SECRET> [sourceHostIP] [BACKUP_DIR]"
    exit 1
fi

if [ -z config ]; then
    echo "Please provide a config name.. Config name will be used to create storage path in the upload location"
    echo "[USAGE] $0 <mysqlRootPassword> <IMPLEMENTATION_NAME> <AWS_KEY> <AWS_SECRET> [sourceHostIP] [BACKUP_DIR]"
    exit 1
fi

if [ -z $souceIP ]; then
    echo "No source Host IP provided. Using 127.0.0.1"
    souceIP=127.0.0.1
    echo "[USAGE] $0 <mysqlRootPassword> <IMPLEMENTATION_NAME> <AWS_KEY> <AWS_SECRET> [sourceHostIP] [BACKUP_DIR]"
fi

# Take dump & restore on a different temp database.
mysql -uroot -p$rootPassword -e "create database $OPENMRS_NEW_DB"
mysqldump --routines --no-create-db --single-transaction --compress --order-by-primary --host $souceIP -uroot -p$rootPassword openmrs | mysql -uroot -p$rootPassword $OPENMRS_NEW_DB
mysql -uroot -p$rootPassword -e "GRANT ALL PRIVILEGES ON $OPENMRS_NEW_DB.* TO 'openmrs-user'@'%'";

psql -Upostgres -c "create database $OPENELIS_NEW_DB";
/usr/pgsql-9.2/bin/pg_dump -h $souceIP -Uclinlims clinlims | psql -Upostgres $OPENELIS_NEW_DB

psql -Upostgres -c "create database $OPENERP_NEW_DB";
/usr/pgsql-9.2/bin/pg_dump -h $souceIP -Upostgres openerp | psql -Upostgres $OPENERP_NEW_DB

# Anonymise
sh $SCRIPT_DIR/bahmni-tools/anonymise-lite/anonymise.sh $OPENMRS_NEW_DB $OPENELIS_NEW_DB $OPENERP_NEW_DB

# Take dump of anonymised DB
mysqldump --routines --no-create-db $OPENMRS_NEW_DB --single-transaction --compress --order-by-primary -uroot -p$rootPassword | gzip -c > $BACKUP_DIR/$OPENMRS_NEW_DB.sql.gz
/usr/pgsql-9.2/bin/pg_dump -Upostgres $OPENELIS_NEW_DB | gzip -c > $BACKUP_DIR/$OPENELIS_NEW_DB.sql.gz
/usr/pgsql-9.2/bin/pg_dump -Upostgres $OPENERP_NEW_DB | gzip -c > $BACKUP_DIR/$OPENERP_NEW_DB.sql.gz

bash $SCRIPT_DIR/ci/pipeline-definitions/push_file_to_aws.sh $BACKUP_DIR/$OPENMRS_NEW_DB.sql.gz $IMPLEMENTATION_NAME anonymised_openmrs.sql.gz $AWS_ACCESS_KEY $AWS_SECRET_KEY
bash $SCRIPT_DIR/ci/pipeline-definitions/push_file_to_aws.sh $BACKUP_DIR/$OPENELIS_NEW_DB.sql.gz $IMPLEMENTATION_NAME anonymised_clinlims.sql.gz $AWS_ACCESS_KEY $AWS_SECRET_KEY
bash $SCRIPT_DIR/ci/pipeline-definitions/push_file_to_aws.sh $BACKUP_DIR/$OPENERP_NEW_DB.sql.gz $IMPLEMENTATION_NAME anonymised_openerp.sql.gz $AWS_ACCESS_KEY $AWS_SECRET_KEY

#upload to aws


# Drop Temp Databases
mysql -uroot -p$rootPassword -e "drop database $OPENMRS_NEW_DB"
psql -Upostgres -c "drop database $OPENELIS_NEW_DB"
psql -Upostgres -c "drop database $OPENERP_NEW_DB"
rm -rf $BACKUP_DIR