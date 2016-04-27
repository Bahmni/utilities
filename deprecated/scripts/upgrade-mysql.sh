#!/bin/sh
set -e -x
rootPassword=$1

BASE_DIR=`dirname $0`

checkPassword() {
	if [ -z $rootPassword ] 
		then
		echo "Please provide a password for mysql root"
		exit 1
	fi	
}

checkPassword
NOW=`date +%Y%d%m%H%M`
BACKUPFILE=/tmp/mysql_dump${NOW}.sql
CNF=/etc/my.cnf
CNFBACKUP=${CNF}.backup.${NOW}
rm -f $BACKUPFILE

mysqldump -uroot -p$rootPassword --all-databases --routines > $BACKUPFILE
service mysqld stop

yum -vy remove mysql.x86_64 mysql-libs.x86_64 mysql-server.x86_64
yum -vy install MySQL-server MySQL-shared MySQL-shared-compat MySQL-client
cp -f ${BASE_DIR}/../puppet/modules/mysql/templates/my.cnf /etc/my.cnf

service mysql start

mysql -uroot -p$rootPassword < $BACKUPFILE

mysql_upgrade -uroot -p$rootPassword

echo "Upgrade complete. If you are using replication in this environment, please setup replication again using relevant scripts for the 5.6 release. "
