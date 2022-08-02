#!/bin/sh

set -e

if [ $# -ne 5 ]
then
echo "Invalid Arguments. Need pacs_server_url, patient_id, patient_first_name, patient_last_name, accession_number"
exit 2
fi

PACS_SERVER_URL=$1
PATIENT_ID=$2
PATIENT_FIRST_NAME=$3
PATIENT_LAST_NAME=$4
ACCESSION_NUMBER=$5

echo "[INFO] Generating file for ${PATIENT_ID} ${PATIENT_FIRST_NAME} ${PATIENT_LAST_NAME} ${ACCESSION_NUMBER} .."
FILE_NAME=$(java -cp /var/lib/bahmni/pacs-simulator.jar org.bahmni.pacssimulator.DicomFileGenerator "${PATIENT_ID}" "${PATIENT_FIRST_NAME}" "${PATIENT_LAST_NAME}" "${ACCESSION_NUMBER}" 0 | grep "File created :" | sed 's/.*://')
echo "[INFO] File Generated at ${FILE_NAME}. Uploading to ${PACS_SERVER_URL}"
/var/lib/bahmni/dcm4che-2.0.28/bin/dcmsnd  ${PACS_SERVER_URL} ${FILE_NAME}
