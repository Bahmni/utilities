#!/bin/bash

    (mysql --user=root --password=password --database=openmrs -h<%= @db_server %> --execute="select count(*) from patient;")