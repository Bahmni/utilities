#!/bin/sh
set -e -x

CHANGE_LOG_TABLE="-Dliquibase.databaseChangeLogTableName=databasechangelog -Dliquibase.databaseChangeLogLockTableName=databasechangeloglock"
LIQUIBASE_JAR="<%= @temp_dir %>/OpenElis/liquibase/lib/liquibase-1.9.5.jar"
CREDS="--url=jdbc:postgresql://<%= @db_server %>:5432/clinlims --username=clinlims --password=clinlims"
CLASSPATH="<%= @build_output_dir %>/<%= @openelis_war_file_name %>.war"
WORKING_DIR="<%= @migrations_directory %>"
DRIVER="org.postgresql.Driver"
CHANGE_LOG_FILE="liquibase.xml"
SCHEMA_NAME=clinlims

cd $WORKING_DIR 
java $CHANGE_LOG_TABLE -jar $LIQUIBASE_JAR --driver=$DRIVER --classpath=$CLASSPATH --changeLogFile=$CHANGE_LOG_FILE --defaultSchemaName=$SCHEMA_NAME $CREDS update
cd -