#!/bin/bash
#
# Copyright 2015-2018 Adrian DC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Usage: cleanram.sh (RAM caches cleanup)

# Show available RAM
echo '';
echo -e ' \e[1;33mcleanram:\e[0m Before RAM cleanups...';
echo '';
sudo free;

# RAM cleanup header
echo '';
echo -e ' \e[1;33mcleanram:\e[0m Dropping caches...';
echo '';

# RAM cleanup commands
commands=$(echo \
'sync
swapoff -a
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
swapon -a' \
| sed 's/^ *//g');

# Execute RAM cleanup commands
OLDIFS=${IFS};
IFS=$'\n';
for command in ${commands}; do
  echo "  ${command}";
  sudo sh -c "timeout -k 5 5 bash -c '${command}'";
done;
IFS=${OLDIFS};

# Show available RAM
echo '';
echo -e ' \e[1;33mcleanram:\e[0m After RAM cleanups...';
echo '';
free;
echo '';
