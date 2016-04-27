#!/bin/bash
set -e -x

ALL_BACKUP_PATH='/backup'
echo "Attempting to create backup folder: $BACKUP_PATH"
mkdir -pv $ALL_BACKUP_PATH

# Perform backup of MYSQL DB
TIME=`date +%a`
BACKUP_PATH="$ALL_BACKUP_PATH/backup_$TIME"
mkdir -pv $BACKUP_PATH
sudo chmod 777 -R $BACKUP_PATH
sudo chmod 777 -R $ALL_BACKUP_PATH
mysqldump -uroot -ppassword --all-databases --routines | gzip > $BACKUP_PATH/mysql_backup_$TIME.sql.gz

sudo chown postgres:postgres $BACKUP_PATH

# Perform backup of PostgreSQL DB
su - postgres -c "pg_dumpall | gzip -c > $BACKUP_PATH/pgsql_backup_$TIME.sql.gz"

echo ">> Backups created at: $BACKUP_PATH"