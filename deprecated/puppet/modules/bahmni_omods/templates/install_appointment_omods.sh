#!/usr/bin/env bash
echo "Installing appointment omods."

find "<%= build_output_dir %>"/"<%= openmrs_distro_file_name_prefix %>" -type f -regextype posix-extended -regex '.*/(appointmentscheduling.*\.omod|coreapps.*\.omod|htmlformentry.*\.omod|reportingrest.*\.omod|referenceapplication.*\.omod|appui.*\.omod)' | grep .omod | xargs -I file cp file "<%= openmrs_modules_dir %>"