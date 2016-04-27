#!/usr/bin/env bash

ARTIFACTS_PATH=$1

VERSION=$2

sudo mkdir -p $ARTIFACTS_PATH
sudo chmod 777 -R $ARTIFACTS_PATH

rm -rf $ARTIFACTS_PATH/release_${VERSION}/
cp -rf release_${VERSION}/ $ARTIFACTS_PATH

cd $ARTIFACTS_PATH

rm -rf `ls -t | awk 'NR>5'`