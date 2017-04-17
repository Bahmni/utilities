#!/bin/bash

usage() {
	echo "Utility script for cloning all the Bahmni repositories"
	echo "	Usage: $0 -d <path> [-s]"
	echo "	-d Path to the directory in which the Bahmni source code shall be downloaded"
	echo "	-s Flag to use the SSH for the git clone command. (default: HTTPS clone)"
	exit 1;
}

BAHMNI_REPOS_URL='https://api.github.com/users/Bahmni/repos?per_page=100'
USE_SSH_CLONE='false'

while getopts ":d: s" o; do
	case "${o}" in
		d)
			BAHMNI_SOURCE_CODE=${OPTARG}
			;;
		s)
			USE_SSH_CLONE=true
			;;
		*)
			usage
			;;
	esac
done

if [[ -z "${BAHMNI_SOURCE_CODE}" ]]; then
	echo "Missing parameter for Bahmni source code directory"
	usage
fi

# Check script dependencies
which jq || { echo "jq not installed. See https://stedolan.github.io/jq/" ; exit 1 ; }
which git || { echo "git not installed. See https://git-scm.com/" ; exit 1 ; }

# Create parent directory if necessary
if [[ ! -d ${BAHMNI_SOURCE_CODE} ]]; then
	mkdir -p ${BAHMNI_SOURCE_CODE}
fi

# Clone all the Bahmni repos
if [[ ${USE_SSH_CLONE} == "true" ]]; then
	BAHMNI_REPOS=$(curl -s ${BAHMNI_REPOS_URL} | jq --raw-output .[].ssh_url)
else
	BAHMNI_REPOS=$(curl -s ${BAHMNI_REPOS_URL} | jq --raw-output .[].clone_url)
fi
cd ${BAHMNI_SOURCE_CODE} || exit 1
for CLONE_URL in ${BAHMNI_REPOS}; do
	REPO_NAME=$(echo ${CLONE_URL} | perl -pe 's/.+:Bahmni\/(.+)\.git/$1/')
	if [[ ! -d ${REPO_NAME} ]]; then
		git clone $CLONE_URL -o upstream
	fi
done
