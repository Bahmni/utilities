#!/bin/bash

# Runs the deploy-puppet-manifest script. 
# added this script since its easier to remember that "run" script will run any puppet manifest.
# didn't want to rename the deploy-puppet script for fear of breaking something exisiting.

echo "Attempting to run puppet manifest: $@ "
SCRIPTS_DIR=`dirname $0`
sudo -E $SCRIPTS_DIR/deploy-puppet-manifest.sh "$@" 
