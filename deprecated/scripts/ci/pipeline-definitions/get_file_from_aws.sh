#!/bin/bash

CONFIG_NAME=$1
FNAME=$2
DOWNLOAD_DIR=$3
AWS_ACCESS_KEY=$4
AWS_SECRET_KEY=$5

BUCKET="bahmni-backup"
FILE_PATH="backups/$CONFIG_NAME/$FNAME"
FULL_PATH="/${BUCKET}/${FILE_PATH}"
REQUEST_DATE="`date +'%a, %d %b %Y %H:%M:%S %z'`"
CONTENT_TYPE="application/x-compressed-tar"
#Dont remove the blank line after GET.. Its required..
GET_REQUEST="GET

${CONTENT_TYPE}
${REQUEST_DATE}
${FULL_PATH}"
signature=`/bin/echo -en "$GET_REQUEST" | openssl sha1 -hmac ${AWS_SECRET_KEY} -binary | base64`
curl -H "Host: ${BUCKET}.s3.amazonaws.com" -H "Date: ${REQUEST_DATE}" -H "Content-Type: ${CONTENT_TYPE}" -H "Authorization: AWS ${AWS_ACCESS_KEY}:${signature}" https://${BUCKET}.s3.amazonaws.com/${FILE_PATH} -o $DOWNLOAD_DIR/$FNAME