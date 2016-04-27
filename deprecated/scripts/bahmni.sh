#!/bin/bash
set -e
yellow='\e[33m'
original='\e[0m'
red='\e[91m'
green='\e[92m'

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ $EUID -ne 0 ]]; then
   echo -e "$red[Error]$original This script must be run as root or with sudo!" 1>&2
   exit 1
fi


function is_service_running() {
    if (( $(ps -ef | grep -v grep | grep $1 | wc -l) > 0 ))
    then
        return 0
    else
        return 1
    fi
}

function start_service() {
    echo -e "Starting up $green $1 $original service..."
    if(!(is_service_running $1)) then
        sudo service $1 start
    else
        echo -e "Service $1 is already up"
    fi
}

function start_pgsql() {
	echo -e "Starting up $green postgresql-9.2 $original ..."
	if(!(is_service_running pgsql-9.2 )) then
		sudo service postgresql-9.2 start 
	else
		echo -e "Service postgresql-9.2 is already up"
	fi
}


function stop_service() {
    echo -e "Checking $yellow $1 $original service..."
    if(is_service_running $1) then
        sudo service $1 stop
        echo -e "Stopped $yellow $1 $original"
    fi

}

# stops all services
stop() {
    echo -e "=================================================================="
    echo -e "$yellow[WARNING]$original All services required for Bahmni will be shut down"
    echo -e "Make sure you run [bahmni start] before you use Bahmni"
    echo -e "=================================================================="

	echo -e "Checking $yellow openerp-server $original service..."
	if(is_service_running openerp-server) then
		stop_service openerp
    fi 
	
	echo -e "Checking $yellow tomcat $original service..."
	if(is_service_running tomcat) then
		ps aux | grep [t]omcat | awk '{print $2}' | xargs -I PID sudo kill -9 PID
		echo -e "Killed $yellow tomcat $original"
	fi

    sleep 3
	stop_service httpd
}

status() {
    up_count=0
    down_count=0
    for service in httpd openerp-server tomcat mysql pgsql-9.2
    do
        if(is_service_running $service) then
            echo -e "$service...... $green[Running] $original"
            let up_count=$up_count+1
        else
            echo -e "$service...... $yellow[Not Running]$original"
            let down_count=$down_count+1
        fi
    done
    services_count="5"
    if (("$services_count" != "$up_count")); then
        echo -e "=================================================================="
        echo -e "$red[ERROR]$original $down_count out of $services_count services are not running"
        echo -e "$red[ERROR]$original Please run [bahmni start] to bring up all services."
        echo -e "=================================================================="
    else
        echo -e "=================================================================="
        echo -e "$green Bahmni is ready to be used $original"
        echo -e "=================================================================="
    fi
}

# starts all services
start() {
	echo -e "=================================================================="
	echo -e "All services required for Bahmni will be starting up"
	echo -e "Run [bahmni.sh status] to check the status"
	echo -e "=================================================================="
	start_service mysql
	start_pgsql
	start_service httpd
	sleep 3
	start_service openerp
	start_service tomcat
	echo -e "=================================================================="
	echo -e "$green Bahmni services started... $original"
	echo -e "$yellow Tomcat will take upto 5 mins to fully come up.... $original"
	echo -e "=================================================================="
}

# restarts all services
restart() {
	echo -e "=================================================================="
	echo -e "Restarting all services required for Bahmni"
	echo -e "Run [bahmni status] to check the status"
	echo -e "=================================================================="
	stop
	sleep 3
	start
}

backup() {
	# Ensure DBs are running if they are down
	start_service mysql
	start_pgsql
	sleep 3
	sudo $PATH_OF_CURRENT_SCRIPT/backup-all-dbs.sh -b /backup
}

tailFunction() {
	case "$1" in
		"access" )
			sudo tail -f /var/log/httpd/access_log
			;;
		"tomcat" )
			sudo tail -f /home/bahmni/apache-tomcat-7.0.22/logs/catalina.out
			;;
		"openerp" )
			sudo tail -f /var/log/openerp/openerp-server.log
			;;
		* )
			echo "Incorrect parameter for tail"
			printUsage
			exit 1
			;;
	esac
}

printUsage() {
	echo -e "-----------------------------------------"
	echo -e "Command line tool for managing bahmni"
	echo -e "\nUsage:"
	echo -e "\tbahmni start"
	echo -e "\tbahmni stop"
	echo -e "\tbahmni restart"
	echo -e "\tbahmni logs [ tomcat | access | openerp ]"
	echo -e "\tbahmni backup-all-dbs"
	echo -e "\tbahmni status"
	echo -e "\n-----------------------------------------"
}

case "$1" in
	"help" )
		printUsage
		;;
	"start" )
		start
		;;
	"stop" )
		stop
		;;
	"restart" )
		restart
		;;
	"backup-all-dbs" )
	    backup
		;;
	"logs" )
	    tailFunction $2
		;;
	"status" )
		status
		;;
	* )
		echo -e "$red[ERROR]$original Invalid option $1"
		printUsage
		;;
esac

tput sgr0

echo ""
