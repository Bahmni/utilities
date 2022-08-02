#!/bin/sh

set -e
run_postgres_command() {
  PGPASSWORD="${PACS_INTEGRATION_DB_PASSWORD}" psql "${PACS_INTEGRATION_DB_NAME}" --host "${PACS_INTEGRATION_DB_HOST}" --port "${PACS_INTEGRATION_DB_PORT}" -U "${PACS_INTEGRATION_DB_USERNAME}" -c "$1"
}

wait_for_tables() {
  echo "Waiting for modality, order_type tables to be created in ${PACS_INTEGRATION_DB_NAME} database.."
  while true
  do
    export PGPASSWORD="${PACS_INTEGRATION_DB_PASSWORD}"
    RESULT=$(psql "${PACS_INTEGRATION_DB_NAME}" --host "${PACS_INTEGRATION_DB_HOST}" --port "${PACS_INTEGRATION_DB_PORT}" -U "${PACS_INTEGRATION_DB_USERNAME}" -A -t -c "SELECT count(*) FROM pg_tables WHERE tablename IN ('modality','order_type');")
    if [ "$RESULT" = "2" ]
    then
      echo "Tables modality, order_type found in ${PACS_INTEGRATION_DB_NAME} database "
      break
    else
      sleep 10
    fi
  done
}

if [ "${UPDATE_PACS_INTEGRATION_DB}" = "true" ]
then
  echo "Waiting for ${PACS_INTEGRATION_DB_HOST}.."
  sh wait-for.sh -t 300 "${PACS_INTEGRATION_DB_HOST}":"${PACS_INTEGRATION_DB_PORT}"

  wait_for_tables
  echo "[INFO] Adding modality and order_type entries.."
  run_postgres_command "INSERT into modality VALUES (1, 'DCM4CHEE','DCM4CHEE PACS', 'pacs-simulator', 9000, 3000) ON CONFLICT (id) DO UPDATE set ip='pacs-simulator',port='9000';"
  run_postgres_command "INSERT into order_type values(1, 'Radiology Order', 1) ON CONFLICT (id) DO UPDATE set name='Radiology Order',modality_id=1;"
fi

echo "[INFO] Starting PACS Simulator..."
java -jar /var/lib/bahmni/pacs-simulator.jar "9000" "${PACS_SIMULATOR_TIMEOUT:=20000}" "${PACS_SERVER_TYPE:=dcm4chee}" "${PACS_SERVER_URL}"
