#!/bin/bash

set -e

rm -rf /tmp/drug_order_uuids.sql

echo "Please enter MySQl password when prompted."

from_id=""
if [ $1 ]
then
    from_id=" and order_id > $1"
fi

mysql -uroot -p openmrs -e "
select
 concat(\"INSERT INTO processed_drug_order (id,create_uid, create_date, write_date, write_uid, order_uuid) VALUES ( \",order_id,\",1, now(), now(), 1, '\",uuid,\"');\")
 INTO OUTFILE '/tmp/drug_order_uuids.sql'
      LINES TERMINATED BY '\n'
 FROM orders
 WHERE order_type_id in (select order_type_id from order_type where name='Drug Order') $from_id and voided=false;"

psql -l -Upostgres openerp -f /tmp/drug_order_uuids.sql








