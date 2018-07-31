#! /bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source ${CURRENT_DIR}/config.sh

# Message
MESSAGE=$@
[[ -z $1 ]] && MESSAGE="TESTING MESSAGE"

curl -s -X POST "https://api.telegram.org/${API_TOKEN}/sendMessage" -F chat_id=${CHAT_ID} -F text="${MESSAGE}" > /dev/null

