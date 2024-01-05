#!/bin/bash
set -e

DATE=$(date +%Y_%m_%d)
DIRS_TO_TAR=( "${HOME}/Desktop" "${HOME}/Documents" "${HOME}/Downloads" "${HOME}/Music" "${HOME}/Pictures" "${HOME}/.local/share" "${HOME}/.purple" "${HOME}/secrets" )
DIRS_TO_RSYNC=( "${HOME}/VirtualBox VMs" )
LOCAL_BACKUP_PATH="/tmp/backup_${DATE}"
MOUNT_PATH="/mnt/nas"
REMOTE_BACKUP_PATH="${MOUNT_PATH}/Backup"

if [ ! -d "${LOCAL_BACKUP_PATH}" ]; then
    mkdir -p "${LOCAL_BACKUP_PATH}"
fi

for d in "${DIRS_TO_TAR[@]}"; do
    BACKUP_FILE="backup_$(basename "${d}")_${DATE}.tar"
    if [ ! -f "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}" ]; then
        echo "INFO: Create backup archive \"${LOCAL_BACKUP_PATH}/${BACKUP_FILE}\" for directory \"${d}\""
        sudo tar -cvf "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}" "${d}"
        sudo chown "${USER}":"${USER}" "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}"
    else
        echo "INFO: Backup archive \"${LOCAL_BACKUP_PATH}/${BACKUP_FILE}\" for directory \"${d}\" already created"
    fi
done

if grep -qs ${MOUNT_PATH} /proc/mounts; then
    echo "INFO: NAS already mounted"
else
    ./mount-nas.sh
fi

if grep -qs ${MOUNT_PATH} /proc/mounts; then
    echo "INFO: Transfer local backup ${LOCAL_BACKUP_PATH} to NAS ${REMOTE_BACKUP_PATH}"
    sudo rsync -r -v --progress -z --size-only "${LOCAL_BACKUP_PATH}" "${REMOTE_BACKUP_PATH}"

    echo "INFO: Attention! Don't forget to delete local backups ${LOCAL_BACKUP_PATH} to save diskspace"

    for d in "${DIRS_TO_RSYNC[@]}"; do
        echo "INFO: Backup directory ${d} to ${REMOTE_BACKUP_PATH}"
        sudo rsync -r -v --progress -z --size-only "${d}" "${REMOTE_BACKUP_PATH}"
    done
fi

./mount-nas.sh
