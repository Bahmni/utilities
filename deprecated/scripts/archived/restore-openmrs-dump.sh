mysql -uroot -ppassword -e "drop database openmrs;"
mysql -uroot -ppassword -e "CREATE DATABASE IF NOT EXISTS openmrs DEFAULT CHARACTER SET utf8;"
mysql -uroot -ppassword openmrs < $1