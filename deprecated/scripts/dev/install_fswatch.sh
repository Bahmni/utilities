#!/bin/sh
set -ex
cd /tmp && rm -rf fswatch && git clone https://github.com/alandipert/fswatch.git 
cd /tmp/fswatch && make
sudo cp -f /tmp/fswatch/fswatch /usr/bin