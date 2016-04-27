#!/bin/bash

# Checks the repositories under the Src folder and reports whether they have any commits or uncommited changes

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOME=$PATH_OF_CURRENT_SCRIPT/../../..

function clean_repo() {
     echo "Checking out "$1
     git clean -fdx
     return 1
}


for directory in `find $HOME`
do
  if [ -d $directory -a -d $directory/.git ];then
     cd $directory
     echo "Checking: $directory"
     echo "------------------------------"
     clean_repo $directory

  fi
done
