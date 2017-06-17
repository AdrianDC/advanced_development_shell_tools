#!/bin/bash
#
# Copyright 2015-2017 Adrian DC
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

# Usage: install_repo.sh (Automated install of Android repo requirements)

# Variables
TimeStart=$(date +%s);

# Introduction
echo '';
echo '';
echo ' [ Installing the repo components ]';
echo '';

# Verify apt based Linux
if ! type apt >/dev/null 2>&1; then
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
#sudo apt-get install --yes git-core gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5 lib32z1 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python;
#sudo apt-get install --yes mingw32 lib32bz2-dev lib32bz2-1.0;
#sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so;
sudo apt-get install --yes bison g++-multilib git gperf libxml2-utils make zlib1g-dev:i386 zip;
sudo apt-get -o Dpkg::Options::='--force-overwrite' install --yes zlib1g-dev:i386;

# Install additional required packages
sudo apt-get install --yes curl git schedtool libxml2-utils gperf maven liblz4-dev liblz4-tool;
sudo apt-get install --yes android-tools-adb android-tools-fastboot policycoreutils;
sudo apt-get install --yes ncurses-dev;
sudo apt-get install --yes ccache lzop;
sudo apt-get install --yes gedit;

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
echo 'export PATH=~/bin:${PATH};';
echo '';
echo '# CCache';
echo 'export USE_CCACHE=1;';
echo 'export USE_PREBUILT_CACHE=1;';
echo 'export CCACHE_DIR=${ANDROID_DEV_DRIVE}/CCache;';
echo 'export CCACHE_LOGFILE=${CCACHE_DIR}/ccache.log;';
echo '';
echo '# Bash Scripts';
echo "source ${current_bash_dir}/android_development_shell_tools.rc;";
echo '';
sudo gedit ~/.bashrc;

# Done
TimeDiff=$(($(date +%s)-${TimeStart}));
echo '';
echo '';
echo " [ Done in ${TimeDiff} secs ]";
echo '';
read key;
