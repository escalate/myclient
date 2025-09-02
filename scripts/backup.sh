#!/bin/bash
set -e -E -u -C -o pipefail

DATE=$(date +%Y_%m_%d)
DIRS_TO_TAR=("${HOME}/Desktop" "${HOME}/Documents" "${HOME}/Downloads" "${HOME}/Music" "${HOME}/Pictures" "${HOME}/.local/share" "${HOME}/secrets" "${HOME}/workspace")
DIRS_TO_RSYNC=("${HOME}/VirtualBox VMs")
LOCAL_BACKUP_PATH="/tmp/backup_${DATE}"
MOUNT_PATH="/mnt/nas"
REMOTE_BACKUP_PATH="${MOUNT_PATH}/Backup"

if [ ! -d "${LOCAL_BACKUP_PATH}" ]; then
  mkdir -p "${LOCAL_BACKUP_PATH}"
fi

for d in "${DIRS_TO_TAR[@]}"; do
  BACKUP_FILE="backup_$(basename "${d}")_${DATE}.tar.bz2"
  if [ ! -f "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}" ]; then
    echo "INFO: Create backup archive \"${LOCAL_BACKUP_PATH}/${BACKUP_FILE}\" for directory \"${d}\""
    sudo tar --create --bzip2 --checkpoint=100 --file "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}" "${d}"
    sudo chown "${USER}":"${USER}" "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}"
    echo "INFO: Create sha256 checksum for file \"${LOCAL_BACKUP_PATH}/${BACKUP_FILE}\""
    sha256sum "${LOCAL_BACKUP_PATH}/${BACKUP_FILE}" >> "${LOCAL_BACKUP_PATH}/sha256sums.txt"
    sed --in-place "s#${LOCAL_BACKUP_PATH}/##g" "${LOCAL_BACKUP_PATH}/sha256sums.txt"
  else
    echo "INFO: Backup archive \"${LOCAL_BACKUP_PATH}/${BACKUP_FILE}\" for directory \"${d}\" already created"
  fi
done

while true; do
  read -p "Do you want to transfer backup to NAS? (y/n) " answer
  case ${answer} in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer (y)es or (n)o.";;
  esac
done

if grep -qs ${MOUNT_PATH} /proc/mounts; then
  echo "INFO: NAS already mounted"
else
  ./mount-nas.sh
fi

if grep -qs ${MOUNT_PATH} /proc/mounts; then
  echo "INFO: Transfer local backup ${LOCAL_BACKUP_PATH} to NAS ${REMOTE_BACKUP_PATH}"
  sudo rsync --recursive --verbose --progress --compress "${LOCAL_BACKUP_PATH}" "${REMOTE_BACKUP_PATH}"

  echo "INFO: Attention! Don't forget to delete local backups ${LOCAL_BACKUP_PATH} to save diskspace"

  for d in "${DIRS_TO_RSYNC[@]}"; do
    echo "INFO: Backup directory ${d} to ${REMOTE_BACKUP_PATH}"
    sudo rsync --recursive --verbose --progress --compress "${d}" "${REMOTE_BACKUP_PATH}"
  done
fi

./mount-nas.sh
