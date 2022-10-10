#!/bin/bash
set -e

SMB_SERVER="$(cat ${HOME}/.smb/nas_server)"
SMB_PATH="$(cat ${HOME}/.smb/nas_path)"
SMB_CREDENTIAL_FILE="${HOME}/.smb/nas_credential"
MOUNT_PATH="/mnt/nas"

if [ $UID -eq 0 ]; then
    echo "INFO: You are root! Everything fine..."
    ROOT_CMD=""
else
    echo "INFO: You are not root! We use sudo to help you..."
    ROOT_CMD="sudo"
fi

if [ ! -f "${SMB_CREDENTIAL_FILE}" ]; then
    echo "ERROR: Login credentials not present!"
    exit 1
fi

if [ ! -d ${MOUNT_PATH} ]; then
    echo "INFO: Create local mount path ${MOUNT_PATH}"
    ${ROOT_CMD} mkdir -p ${MOUNT_PATH}
fi

if grep -qs ${MOUNT_PATH} /proc/mounts; then
    echo "INFO: Umount ${MOUNT_PATH} ..."
    ${ROOT_CMD} umount ${MOUNT_PATH}
else
    echo "INFO: Mount //${SMB_SERVER}${SMB_PATH} to ${MOUNT_PATH} ..."
    ${ROOT_CMD} mount -t cifs -o credentials="${SMB_CREDENTIAL_FILE}" "//${SMB_SERVER}${SMB_PATH}" "${MOUNT_PATH}"
fi
