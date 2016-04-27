#!/bin/bash

# Runs the deploy-module script. 
# added this script since its easier to remember that "run" script will run any puppet module.
# didn't want to rename the deploy-module script for fear of breaking something exisiting.

echo "Attempting to run puppet MODULE: $@ "
SCRIPTS_DIR=`dirname $0`
sudo -E $SCRIPTS_DIR/deploy-module.sh "$@" 
