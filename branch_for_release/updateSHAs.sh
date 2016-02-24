#!/bin/bash
brew install jq
RCol='\x1B[0m'; Red='\x1B[0;31m'; Gre='\x1B[0;32m'; Yel='\x1B[0;33m'; Blu='\x1B[0;34m';

. allrepos.sh

rm repo_revisions.properties
  for repo in "${allrepos[@]}"
do
   echo -e "${Gre}Getting latest commit SHA for $repo ${RCol}"
   echo  -e "https://api.github.com/repos/Bahmni/$repo/commits/master"
   printf "$repo=" | tr "-" "_" >> repo_revisions.properties
   curl "https://api.github.com/repos/Bahmni/$repo/commits/master"| jq '.sha'| tr -d  "\"">> repo_revisions.properties
done
