function run_openmrs_dependent_liquibase() {
	java -Dliquibase.databaseChangeLogTableName=liquibasechangelog -Dliquibase.databaseChangeLogLockTableName=liquibasechangeloglock -DschemaName=openmrs -jar <%= @liquibase_jar %> --driver=com.mysql.jdbc.Driver --url=jdbc:mysql://<%= @db_server %>:3306/openmrs --username=root --password=password --classpath=$1:<%= @openmrs_war_path %> --changeLogFile=$2 update
}

function run_omod_liquibase() {
	run_openmrs_dependent_liquibase <%= @openmrs_modules_dir %>/$1.omod liquibase.xml
}

function run_atomfeed_client_liquibase() {
	run_omod_liquibase $1
	run_openmrs_dependent_liquibase <%= @temp_dir%>/$1/lib/<%= @atomfeed_client %>.jar sql/db_migrations.xml
}