#!/bin/bash

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Validating syntax of puppet manifests..."

cd $PATH_OF_CURRENT_SCRIPT/../puppet
find . -name "*.pp" | xargs puppet parser validate