#!/bin/sh
set -e -x

CHANGE_LOG_TABLE="-Dliquibase.databaseChangeLogTableName=liquibasechangelog -Dliquibase.databaseChangeLogLockTableName=liquibasechangeloglock"
LIQUIBASE_JAR="<%= @tomcatInstallationDirectory %>/webapps/<%= @openerp_atomfeed_war_file_name %>/WEB-INF/lib/liquibase-core-2.0.3.jar"
DRIVER="org.postgresql.Driver"
CREDS="--url=jdbc:postgresql://<%= @db_server %>:5432/openerp --username=postgres --password=postgres"
CLASSPATH="<%= @build_output_dir %>/<%= @openerp_atomfeed_war_file_name %>.war"
CHANGE_LOG_FILE="liquibase.xml"
WORKING_DIR="<%= @migrations_directory %>"

cd $WORKING_DIR
java $CHANGE_LOG_TABLE  -jar $LIQUIBASE_JAR --driver=$DRIVER --classpath=$CLASSPATH --changeLogFile=$CHANGE_LOG_FILE $CREDS update
cd -