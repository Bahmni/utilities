# disable yum cache
sed -i 's/keepcache=1/keepcache=0/g' /etc/yum.conf

# disable other repos
sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/CentOS-Base.repo
sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo
sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/pgdg-92-centos.repo
sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/puppetlabs.repo

cp /packages/local.repo /etc/yum.repos.d/
createrepo --update /packages/localrepo
touch /etc/yum.repos.d/local.repo

yum install puppet git
# git clone https://github.com/Bahmni/bahmni-environment.git