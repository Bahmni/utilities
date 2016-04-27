#!/bin/sh
set -e -x


CHANGE_LOG_TABLE="-Dliquibase.databaseChangeLogTableName=databasechangelog -Dliquibase.databaseChangeLogLockTableName=databasechangeloglock"
LIQUIBASE_JAR="reference-data/WEB-INF/lib/liquibase-core-3.0.5.jar"
DRIVER="org.postgresql.Driver"
CREDS="--url=jdbc:postgresql://<%= @db_server %>/reference_data --username=reference_data --password=reference_data"
CHANGE_LOG_FILE="./reference-data/WEB-INF/changelog.xml"
WORKING_DIR="<%= @tomcatInstallationDirectory%>/webapps"

cd $WORKING_DIR
java $CHANGE_LOG_TABLE -jar $LIQUIBASE_JAR --driver=$DRIVER --classpath=<%=@reference_data_war%> --changeLogFile=$CHANGE_LOG_FILE  $CREDS update
cd -
