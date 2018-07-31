#! /bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

${CURRENT_DIR}/sendTelegramMessage.sh "[NAS] Starting synchronization of backup files"

${CURRENT_DIR}/sendTelegramMessage.sh "[NAS] Starting synchronization of Databases"
${CURRENT_DIR}/syncDatabases.sh

${CURRENT_DIR}/sendTelegramMessage.sh "[NAS] Starting synchronization of Web files"
${CURRENT_DIR}/syncFiles.sh

${CURRENT_DIR}/sendTelegramMessage.sh "[NAS] Starting synchronization of Mailboxes"
${CURRENT_DIR}/syncMailboxes.sh

${CURRENT_DIR}/sendTelegramMessage.sh "[NAS] Synchronization of backup files completed"


