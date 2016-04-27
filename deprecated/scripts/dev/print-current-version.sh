#!/bin/bash


BRANCH_NAME=`git rev-parse --abbrev-ref HEAD`
LAST_COMMIT=`git log -1`

echo "-------------------------"
echo "BRANCH: $BRANCH_NAME"
echo "-------------------------"
echo "$LAST_COMMIT" 