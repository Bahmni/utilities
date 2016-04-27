#!/bin/bash

set -e

TIME=`date +%Y%m%d_%H%M%S`
BACKUP_DIR=${1:-/backup}

/usr/pgsql-9.2/bin/pg_dumpall -U postgres | gzip -c > ${BACKUP_DIR}/pgsql_backup_$TIME.sql.gz