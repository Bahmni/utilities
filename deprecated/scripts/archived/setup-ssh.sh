cp setup/vagrant* ~/.ssh/
###ssh -t root@$1 'cp -r /home/vagrant/.ssh . && mkdir /packages'
vagrant ssh -c root@$1 'cp -r /home/vagrant/.ssh . && mkdir /packages'