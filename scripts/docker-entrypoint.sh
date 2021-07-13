#!/usr/bin/env bash

set -e

ODRIVE_AGENT_STRTUP_DELAY=5

if [ -z "${ODRIVE_AUTH_KEY}" ]; then
  echo "ODRIVE_AUTH_KEY is required"
  exit 1
fi
if [ -z "${ODRIVE_MOUNT_LOCAL_PATH}" ]; then
  echo "ODRIVE_MOUNT_LOCAL_PATH is required"
  exit 1
fi
if [ -z "${ODRIVE_MOUNT_REMOTE_PATH}" ]; then
  echo "ODRIVE_MOUNT_REMOTE_PATH is required"
  exit 1
fi

nohup odriveagent > /dev/null 2>&1 &

sleep ${ODRIVE_AGENT_STRTUP_DELAY}

odrive authenticate ${ODRIVE_AUTH_KEY}

odrive mount ${ODRIVE_MOUNT_LOCAL_PATH} ${ODRIVE_MOUNT_REMOTE_PATH}

tail -f /dev/null
