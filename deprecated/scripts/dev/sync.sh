#!/bin/sh
if [ $# -lt 3 ]; then
   echo "Usage: $0 <local_folder> <remote_ip> <remote_folder> [<remote_user>]"
   echo "Eg:"
   echo	"scripts/dev/sync.sh ../registration/app/ 192.168.33.10 /var/www/registration"
   echo "scripts/dev/sync.sh ../clinical/app/ 192.168.33.10 /var/www/clinical"
   echo "scripts/dev/sync.sh ../OpenElis/openelis/WebContent/pages/ 192.168.33.10 /home/jss/apache-tomcat-8.0.12/webapps/openelis/pages/"
   exit 1
fi

set -ex

local=$1
remote=$2
path=$3
user=${4:-root}

sync_command="date +%H:%M:%S && rsync -iru --exclude .git --exclude target  --exclude .svn  --exclude dist --exclude out --progress --itemize-changes --update --delete --chmod=Du=rwx,Dg=rwx,Do=rwx,Fu=rwx,Fg=rwx,Fo=rwx -p $local -e ssh $user@$remote:$path"
sh -c "$sync_command"
fswatch $local "$sync_command"
