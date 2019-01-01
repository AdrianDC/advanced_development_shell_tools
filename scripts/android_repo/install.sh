#!/bin/bash
#
# Copyright 2015-2019 Adrian DC
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

# Usage: install.sh (Automated install of Android repo requirements)

# Variables
TimeStart=$(date +%s);

# Introduction
echo '';
echo '';
echo ' [ Installing the repo components ]';
echo '';

# Verify apt based Linux
if ! type apt > /dev/null 2>&1; then
  echo 'install_repo.sh is meant to be used with apt';
  echo '';
  return;
fi;

# Update Java JDK (argument to ignore the purge)
if [ -z "${1}" ]; then
  sudo apt-get -f purge --yes openjdk-\* icedtea-\* icedtea6-\*;
fi;
sudo add-apt-repository --yes ppa:webupd8team/java;
sudo apt-get update --yes;
sudo apt-get install --yes openjdk-8-jdk;
java -version;

# Install generic required packages
sudo apt-get install --yes bc bison build-essential curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev;

# Install additional required packages
sudo apt-get install --yes android-tools-adb android-tools-fastboot policycoreutils;
sudo apt-get install --yes ccache gedit liblz4-dev liblz4-tool maven ncurses-dev;

# Install repo binary
if [ ! -d ~/bin ]; then
  mkdir ~/bin;
fi;
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo;
chmod a+x ~/bin/repo;

# Configure the .bashrc exports
current_bash_dir=$(pwd);
current_user_name=$(whoami);
echo '';
echo '';
echo ' [ Copy, Paste & Adapt these lines at the end of .bashrc ]';
echo '';
echo '# Android';
echo "export ANDROID_DEV_DRIVE=/media/${current_user_name}/AndroidDev;";
echo "export ANDROID_DESKTOP=$(xdg-user-dir DESKTOP);";
echo "export PATH=~/bin:\${PATH};";
echo '';
echo '# CCache';
echo 'export USE_CCACHE=1;';
echo 'export USE_PREBUILT_CACHE=1;';
echo "export CCACHE_DIR=\${ANDROID_DEV_DRIVE}/CCache;";
echo "export CCACHE_LOGFILE=\${CCACHE_DIR}/ccache.log;";
echo '';
echo '# Bash Scripts';
echo "source ${current_bash_dir}/advanced_development_shell_tools.rc;";
echo '';
sudo gedit ~/.bashrc;

# Done
TimeDiff=$(($(date +%s) - TimeStart));
echo '';
echo '';
echo " [ Done in ${TimeDiff} secs ]";
echo '';
read -r;
