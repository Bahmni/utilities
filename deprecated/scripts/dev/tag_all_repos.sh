#!/bin/bash

# Checks the repositories under the Src folder and reports whether they have any commits or uncommited changes

set -e
TAG_NAME=$1
IMPLEMENTATION_NAME=$2
BRANCH=${3:-master}

if [[ "$#" -lt 2 ]]; then
    echo "Please provide TAG_NAME and IMPLEMENTATION_NAME"
    echo "[Usage] $0 <TAG_NAME> <IMPLEMENTATION_NAME> [BRANCH]"
    exit 1
fi

PATH_OF_CURRENT_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOME=$PATH_OF_CURRENT_SCRIPT/../../..

source $PATH_OF_CURRENT_SCRIPT/git_functions.sh

REPOS=('bahmni-environment' 'OpenElis' 'bahmni-core' "${IMPLEMENTATION_NAME}-config" 'openerp-atomfeed-service' 'openerp-modules' 
        'openmrs-distro-bahmni' 'openmrs-module-bahmniapps' 'reference-data')

REPO_WITH_CHANGES=0

for repo in ${REPOS[@]}
do
    cd $HOME/$repo
    git checkout $BRANCH
    if check_if_changes_pending $HOME/$repo ; then 
        echo "[$repo] has changes"
        let REPO_WITH_CHANGES=$REPO_WITH_CHANGES+1
    else
        echo "[$repo] Rebasing with origin/$BRANCH"
        git pull --rebase
    fi  
done

if [ $REPO_WITH_CHANGES -gt 0 ]; then
    echo "There are changes in $REPO_WITH_CHANGES repos. Please fix them and run the script again."
    exit 1
fi

for repo in ${REPOS[@]}
do
    cd $HOME/$repo
    if [[ -n `git tag | grep $TAG_NAME` ]]; then 
        echo "[$repo] Already tagged"
    else
        echo "[$repo] Tagging with $TAG_NAME"
        git tag $TAG_NAME
    fi
    git push origin $TAG_NAME
done

echo "Tagged all repos succesfuly. Start coding for next release!! Regards, Taggin bot"