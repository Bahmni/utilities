#!/bin/sh

rm -rf "<%= @openmrs_modules_dir %>"/*

echo "Installing core bahmni omods"
find "<%= build_output_dir %>/<%= openmrs_distro_file_name_prefix %>" -type f -regextype posix-extended -not -regex '.*/(appointmentscheduling.*\.omod|coreapps.*\.omod|htmlformentry.*\.omod|reportingrest.*\.omod|referenceapplication.*\.omod|appui.*\.omod|.*atomfeed.*client.*\.omod|bacteriology.*\.omod)' | grep .omod | xargs -I file cp file "<%= openmrs_modules_dir %>"