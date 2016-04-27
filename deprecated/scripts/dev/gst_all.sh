#!/bin/bash

# Checks the repositories under the Src folder and reports whether they have any commits or uncommited changes

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOME=$PATH_OF_CURRENT_SCRIPT/../../..

function check_if_changes_pending() {
	 
     if [ -n "$(git status --porcelain)" ]; then
       echo "Uncommited changes in "$1
       git status
       return 0
     fi
     if [ -n "$(git status | grep 'ahead of')" ]; then
       echo "Unpushed changes in "$1
       git status
       return 0
     fi

     return 1
}


for directory in `find $HOME`
do
  if [ -d $directory -a -d $directory/.git ];then
     cd $directory
     echo "Checking: $directory"
     echo "------------------------------"
     check_if_changes_pending $directory

  fi
done
