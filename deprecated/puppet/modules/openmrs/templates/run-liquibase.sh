#!/bin/sh
set -e -x



CHANGE_LOG_TABLE="-Dliquibase.databaseChangeLogTableName=liquibasechangelog -Dliquibase.databaseChangeLogLockTableName=liquibasechangeloglock"
LIQUIBASE_JAR="openmrs/WEB-INF/lib/liquibase-core-2.0.5.jar"
DRIVER="com.mysql.jdbc.Driver"
CREDS="--url=jdbc:mysql://<%= @db_server %>:3306/openmrs --username=root --password=password"
COMMON_CLASSPATH="<%= @build_output_dir %>/<%= @openmrs_distro_file_name_prefix %>/<%= @openmrs_war_file_name %>.war"
WORKING_DIR="<%= @tomcatInstallationDirectory %>/webapps"

cd $WORKING_DIR
java $CHANGE_LOG_TABLE -jar $LIQUIBASE_JAR --driver=$DRIVER --classpath=$COMMON_CLASSPATH --changeLogFile=liquibase-core-data.xml $CREDS update
java $CHANGE_LOG_TABLE -jar $LIQUIBASE_JAR --driver=$DRIVER --classpath=$COMMON_CLASSPATH --changeLogFile=liquibase-update-to-latest.xml $CREDS update
cd -
