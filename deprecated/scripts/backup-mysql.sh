#!/bin/sh
set -e
rootPassword=$1

if [ -z $rootPassword ]; then
    echo "Please provide a password for mysql root"
	echo "[USAGE] $0 <mysqlRootPassword> [BACKUP_DIR]"
	exit 1
fi	

TIME=`date +%Y%m%d_%H%M%S`
BACKUP_DIR=${2:-/backup}

mysqldump -uroot -p$rootPassword --all-databases --routines | gzip > $BACKUP_DIR/mysql_backup_$TIME.sql.gz