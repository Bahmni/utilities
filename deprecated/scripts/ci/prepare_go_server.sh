#!/bin/bash

## Prerequisites
## ----------------
## (remove in /etc/sudoers) Defaults requiretty
## add go to sudoer's list (/etc/sudoers)
## go  ALL=(ALL)       NOPASSWD: ALL

## install git
## install httpd

set -e

echo "Preparing Bahmni go server"
echo "----------------"

## Setup bahmni packages
## ---------------------
echo "Copy bahmni packages from https://bahmni-repo.twhosted.com, and setting up local apache to act as local bahmni repository"
echo "----------------"
sudo wget -r -nH --no-parent --reject="index.html*, boxes*" https://bahmni-repo.twhosted.com/packages/ -P /var/www/html/


### Build dev tools
### -----------------
echo "Setting dev tools"
echo "----------------"
echo "Installing maven"
echo "----------------"
tar -zxf /var/www/html/packages/tools/apache-maven-3.0.5-bin.tar.gz -C /usr/local
ln -s /usr/local/apache-maven-3.0.5/bin/mvn /usr/local/bin/mvn

echo "Installing ant"
echo "----------------"
tar -zxf /var/www/html/packages/tools/apache-ant-1.9.1-bin.tar.gz -C /usr/local
ln -s /usr/local/apache-ant-1.9.1/bin/ant /usr/local/bin/ant

echo "Installing npm"
echo "----------------"
yum -y install npm

echo "Installing bower"
echo "----------------"
npm install -g bower

echo "Installing grunt"
echo "----------------"
npm install -g grunt-cli
npm install -g grunt

## ruby (1.8.7)
echo "Installing RVM"
echo "----------------"
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh

echo "Installing Ruby 1.8.7"
echo "----------------"
rvm install 1.8.7

echo "Installing ruby-devel"
echo "----------------"
yum -y install ruby-devel

echo "Installing compass"
echo "----------------"
gem install compass

echo "Installing zip"
echo "----------------"
yum -y install zip

rpm -ivh /var/www/html/packages/localrepo/makeself-2.2.0-12.1.noarch.rpm

## For go user access to build tools
chmod -R a+rx /usr/lib/node_modules
chmod -R a+rx /usr/lib/ruby
#chmod -R a+rx /usr/bin/compass