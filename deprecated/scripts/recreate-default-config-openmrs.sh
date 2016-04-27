set -e
sudo service tomcat stop
export IMPLEMENTATION_NAME=default
mysql -uroot -ppassword -e "drop database if exists openmrs;"
/Project/bahmni-environment/scripts/deploy-puppet-manifest.sh deploy-implementation
rm -rf /home/jss/apache-tomcat-8.0.12/webapps/openerp-atomfeed-service
rm -rf /home/jss/apache-tomcat-8.0.12/webapps/reference-data
rm -rf /home/jss/apache-tomcat-8.0.12/webapps/openelis
sudo service tomcat start
