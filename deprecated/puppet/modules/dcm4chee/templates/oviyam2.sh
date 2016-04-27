#!/usr/bin/env bash

sudo unzip -o -q "<%= @build_output_dir %>/<%= @oviyam2_bin_foldername %>.zip" -d "<%= @build_output_dir %>"
sudo mkdir "<%= @dcm4chee_server_default_location %>/deploy/<%= @oviyam2_war_filename %>.war"
\cd "<%= @dcm4chee_server_default_location %>/deploy/<%= @oviyam2_war_filename %>.war"
sudo jar -xvf "<%= @build_output_dir %>/<%= @oviyam2_bin_foldername %>/<%= @oviyam2_bin_foldername %>/<%= @oviyam2_war_filename %>.war"
