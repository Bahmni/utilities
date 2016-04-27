#!/bin/sh
set -e -x

java -jar -Dfile.encoding=utf-8 lib/liquibase-1.9.5.jar --defaultsFile=liquibase.properties --contexts=bahmni --url=jdbc:postgresql://<%= @db_server %>:5432/clinlims update