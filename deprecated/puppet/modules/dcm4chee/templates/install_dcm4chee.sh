#!/usr/bin/env bash

if test -d "<%= @dcm4chee_server_default_location %>/archive";
then
    sudo service dcm4chee stop
    sudo mv "<%= @dcm4chee_server_default_location %>/archive" "<%= @bahmni_location %>"
fi

if test -d "<%= @bahmni_location %>";
then
    sudo rm -rf "<%= @dcm4chee_location %>"
else
    sudo mkdir -p "<%= @bahmni_location %>"
fi

chown bahmni:bahmni "<%= @bahmni_location %>"
chmod 555 "<%= @bahmni_location %>"

sudo unzip -o -q "<%= @build_output_dir %>/<%= @dcm4chee_zip_filename %>.zip" -d "<%= @bahmni_location %>"

sudo chown -R "<%= @dcm4chee_user %>":"<%= @dcm4chee_group %>" "<%= @bahmni_location %>/<%= @dcm4chee_zip_filename %>"
sudo chmod 755 -R "<%= @bahmni_location %>/<%= @dcm4chee_zip_filename %>"

if test "<%= @is_passive_setup %>" == "false";
then
    echo "Creating tables for dcm4chee."
    if [ "$(psql -Upostgres -lqt | cut -d \| -f 1 | grep -w pacsdb | wc -l)" -eq 0 ];
    then
        echo "Creating database : pacsdb"
        export PGUSER=postgres
        psql -U postgres -f "<%= @temp_dir %>/setupDB.sql"
        psql -U postgres pacsdb -f "<%= @dcm4chee_location %>/sql/create.psql"
    else
        echo "The database pacsdb already exits"
    fi
fi
sudo rm -rf "<%= @jboss_location %>"
sudo unzip -o -q "<%= @packages_servers_dir %>/<%= @jboss_zip_filename.zip %>" -d "<%= @share_location %>"
sudo sh "<%= @dcm4chee_location %>"/bin/install_jboss.sh "<%= @jboss_location %>"

if test -d "<%= @bahmni_location %>/archive";
then
    sudo mv "<%= @bahmni_location %>/archive" "<%= @dcm4chee_server_default_location %>"
fi