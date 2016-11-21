#!/bin/bash

# Handle username
if [ ! -z "${1}" ]; then
  echo 'Loading .bashrc';
  source /home/${1}/.bashrc;
fi;

# Build in progress
cd "${ANDROID_DEV_DRIVE}/Logs";
if [ ! -z $(find * -mtime -0,003 | tail -1) ]; then
  exit;
fi;

# Reboot
/sbin/shutdown -r now;
