#!/bin/sh
set -e -x

CHANGE_LOG_TABLE="-Dliquibase.databaseChangeLogTableName=liquibasechangelog -Dliquibase.databaseChangeLogLockTableName=liquibasechangeloglock"
LIQUIBASE_JAR="<%= @tomcatInstallationDirectory %>/webapps/openmrs/WEB-INF/lib/liquibase-core-2.0.5.jar"
DRIVER="com.mysql.jdbc.Driver"
CREDS="--url=jdbc:mysql://<%= @db_server %>:3306/openmrs --username=root --password=password"
CLASSPATH="/tmp/mysql-connector-java-5.1.28.jar"
WORKING_DIR="<%= @migrations_directory %>"

cd $WORKING_DIR 
java $CHANGE_LOG_TABLE -jar $LIQUIBASE_JAR --driver=$DRIVER --classpath=$CLASSPATH --changeLogFile=liquibase.xml $CREDS update
cd -