#!/bin/sh

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source ${CURRENT_DIR}/config.sh

rsync -chavzP -e "ssh -p ${SERVER_CONN_PORT}" ${SERVER_CONN_HOST}:${REMOTE_BACKUP_MAILS_DIR} ${LOCAL_BACKUP_MAILS_DIR}
${CURRENT_DIR}/sendTelegramMessage.sh "[NAS] Mailboxes files syncronized"
