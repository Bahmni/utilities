#!/usr/bin/env bash
echo "Installing bacteriology omods."

find "<%= build_output_dir %>"/"<%= openmrs_distro_file_name_prefix %>" -type f -regextype posix-extended -regex '.*/(bacteriology.*\.omod)' | grep .omod | xargs -I file cp file "<%= openmrs_modules_dir %>"