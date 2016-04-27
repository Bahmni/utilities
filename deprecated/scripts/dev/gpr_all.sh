#!/bin/bash

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOME=$PATH_OF_CURRENT_SCRIPT/../../..

source $PATH_OF_CURRENT_SCRIPT/git_functions.sh

function pull_sources {
  while read source; do
    output_folder_name=$absolute_path_to_folder_containing_all_source_folders`echo $source | awk -F " " '{print $2}'`
    echo "Checking $output_folder_name"
    echo "----------------------------------------------------------------------------------------------------------"
    cd $HOME
    if [[ ! -e $output_folder_name  ]]; then
        echo "Skipping. Since folder not found on machine."
    else
    	if check_if_changes_pending $output_folder_name ; then 
    		echo ".." 	
    	else
    		git_pull_rebase $HOME/$output_folder_name
    	fi	
    fi
    echo "----------------------------------------------------------------------------------------------------------"
  done < $PATH_OF_CURRENT_SCRIPT/source.list
}


pull_sources
