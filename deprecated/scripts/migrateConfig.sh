mysql -uroot -ppassword openmrs -e "delete from bahmni_config;"
OUTPUT=$(python -c 'import MySQLdb')
RESULT="$?"
if [ "$RESULT" -eq 0 ]; then
    echo "MySQLdb installed"
else
    sudo yum install -y MySQL-python
fi
mysql -uroot -ppassword openmrs -e "delete from bahmni_config;"
python migrate_config.py > temp_config.sql
mysql -uroot -ppassword openmrs < temp_config.sql
rm temp_config.sql
