#!/bin/bash

if [[ -n "${FILEBEAT_CONF_BASE64}" ]]; then
    echo "${FILEBEAT_CONF_BASE64}" | base64 -d > /usr/share/filebeat/filebeat.yml
    chmod 644 /usr/share/filebeat/filebeat.yml
fi

/usr/local/bin/docker-entrypoint "$1"
