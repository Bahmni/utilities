#!/bin/bash
set -e

# This script performs backup of all the databases (OpenMRS, ERP, ELIS, Reference Data)


# checks if service is running
function is_service_running() {
	if (( $(ps -ef | grep -v grep | grep $1 | wc -l) > 0 ))
	then
		return 0
	else
		return 1
	fi
}


############################### CHECK INPUTS ############################################################

echo ""
echo "Running backup DB script at $(date)"
echo "=================================================================="

if [[ $EUID -ne 0 ]]; then
   echo "[Error] This script must be run as root or with sudo!" 1>&2
   exit 1
fi


while getopts b: option
do
        case "${option}"
        in
                b) BACKUP_PATH=${OPTARG};;
        esac
done

if [ -z $BACKUP_PATH ]; 
then
	echo "[Error] You must specify a backup folder path using the -b switch"
	echo "Example:"
	echo "sudo ./backup-all-dbs.sh -b /tmp/backup"
	exit 1
fi


############################### STOP ALL ################################################################

# Bring down Apache Web Server
if is_service_running httpd 
then
	echo "Shutting down httpd service..."
	sudo service httpd stop
fi	

# Bring down Tomcat (Stop Service and Kill Tomcat)
if is_service_running tomcat 
then
	echo "Shutting down tomcat service..."
	sudo service tomcat stop
	sleep 3
	ps aux | grep [t]omcat | awk '{print $2}' | xargs -I PID sudo kill -9 PID
fi	

# Bring down OpenERP
if is_service_running openerp
then
	echo "Shutting down openerp service..."
	sudo service openerp stop
fi	

################################ PERFORM BACKUP ###########################################################

if [ ! -d "$BACKUP_PATH" ]; then
  	echo "Attempting to create backup folder: $BACKUP_PATH"
  	sudo mkdir -pv $BACKUP_PATH
fi

# Perform backup of MYSQL DB
TIME=`date +%Y%m%d_%H%M%S`
sudo mysqldump -uroot -ppassword --all-databases --routines | gzip > $BACKUP_PATH/mysql_backup_$TIME.sql.gz

chown postgres:postgres $BACKUP_PATH

# Perform backup of PostgreSQL DB
su - postgres -c "pg_dumpall | gzip -c > $BACKUP_PATH/pgsql_backup_$TIME.sql.gz"

echo ">> Backups created at: $BACKUP_PATH"
################################## START ALL ###############################################################
# Start APACHE
if is_service_running httpd 
then
	echo "Warning: HTTPD is already running!!"
else 
	sudo service httpd start
fi	

# Start Tomcat
if is_service_running tomcat
then
	echo "Warning: Tomcat is already running!!"
else 
	sudo service tomcat start
fi	

# Start OpenERP
if is_service_running openerp
then
	echo "Warning: OpenERP is already running!!"
else 
	sudo service openerp start
fi	
