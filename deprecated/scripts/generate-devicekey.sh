#!/bin/bash

device_name=$1

TIME=`date +%Y%m%d_%H%M%S`
 
cd /etc/ssl/certs

if [ "$2" ]
	then
	echo "******* generating root key ************"
	openssl genrsa -out rootCA.key 2048
	echo "******* self signing root key ************"
	openssl req -x509 -new -nodes -key rootCA.key -days 3650 -out rootCA.pem
fi

echo "******* generating server key ************"
cd /etc/pki/tls/private
if [ -f "localhost.key"];	then	
	mv localhost.key localhost-$TIME.key
fi
openssl genrsa -out $device_name.key 2048

echo "******* generating server csr  key ************"
cd /etc/pki/tls/certs
openssl req -new -key ../private/$device_name.key -out $device_name.csr

echo "******* signing server csr ************"
if [ -f "localhost.crt"];	then	
	mv localhost.crt localhost-$TIME.crt
fi
openssl x509 -req -in $device_name.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out $device_name.crt -days 3650


