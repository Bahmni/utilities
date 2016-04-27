#!/bin/sh
# Ideally everything should be installed via puppet but for puppet to run certain utilities need to be installed for puppet to run

SCRIPTS_DIR=`dirname $0`

sudo yum -y install ruby
sudo rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm
sudo yum -y install puppet
sudo mkdir -p /packages/localrepo
if [[ $FACTER_go_bahmni_yum_repo_url != '' ]]
then
        echo $FACTER_go_bahmni_yum_repo_url
		sudo wget -r -nH --no-parent --reject="index.html*" http://$FACTER_go_bahmni_yum_repo_url/packages/ -P /./
else
        sudo wget -r -nH --no-parent --reject="index.html*" https://bahmni-repo.twhosted.com/packages/ -P /./
fi
sudo chmod -R 777 /packages
sudo sed -i '/^127\.0\.0\.1/ s/$/'" $HOSTNAME"'/' /etc/hosts

sudo -E sh $SCRIPTS_DIR/run-puppet-manifest.sh provision