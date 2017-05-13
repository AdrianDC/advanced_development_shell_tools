#!/bin/bash
# ======================================
#   Developed by Adrian DC - 2015-2016
# ======================================

# Usage: run_cleanram.sh (RAM caches cleanup)

free;
sudo echo '';

commands=$(echo \
'sync
swapoff -a
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
swapon -a' \
| sed 's/^ *//g');

OLDIFS="${IFS}";
IFS=$'\n';
for command in ${commands}; do
  echo " [${command}]";
  sudo sh -c "timeout 5 ${command}";
done;
IFS="${OLDIFS}";

echo "";
free;
