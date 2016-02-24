#!/bin/bash

RCol='\x1B[0m'; Red='\x1B[0;31m'; Gre='\x1B[0;32m'; Yel='\x1B[0;33m'; Blu='\x1B[0;34m';

. allrepos.sh

cd ~/allrepos

for repo in "${allrepos[@]}"
do
   cd $repo
   echo -e "${Blu}checking for changes in $repo ${RCol}"
   if [ -n "$(git status | grep 'ahead of')" ]
   then
      echo -e "${Gre}Pushing changes in $repo ${RCol}"
      git push origin master
   else
      echo -e "${Yel}No changes to push in $repo ${RCol}"
   fi
   cd ..
done
