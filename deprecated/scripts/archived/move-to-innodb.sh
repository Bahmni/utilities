#/bin/sh
rootPassword=$1
SQLFILE=/tmp/alter_table.sql

checkPassword() {
	if [ -z $rootPassword ] 
		then
		echo "Please provide a password for mysql root"
		exit 1
	fi	
}

prepare() {
	echo "Preparing ..."
	rm -f $SQLFILE
}

alter_table() {
	echo "Changing engine to InnoDB. Sql is available for review in $SQLFILE"
	mysql -u root -p${rootPassword} -Ne "select concat('ALTER TABLE ', table_schema, '.', table_name, ' ENGINE=INNODB;') from information_schema.tables where table_schema in ('openmrs', 'jasperserver') and table_type = 'BASE TABLE';" > $SQLFILE
	mysql -u root -p${rootPassword} < $SQLFILE	
}

verify_table() {
	echo "Verifying ..."
	mysqlcheck -uroot -p${rootPassword} openmrs
	mysqlcheck -uroot -p${rootPassword} jasperserver
}

checkPassword
prepare
alter_table
verify_table
echo "Done"
