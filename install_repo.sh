#!/bin/bash
TimeStart=$(date +%s);

# Introduction
echo "";
echo "";
echo " [ Installing the repo components ]";
echo "";

# Update Java JDK (argument to ignore the purge)
if [ -z "$1" ]; then
  sudo apt-get -f purge --yes openjdk-\* icedtea-\* icedtea6-\*;
fi;
sudo add-apt-repository --yes ppa:webupd8team/java;
sudo apt-get update --yes;
sudo apt-get install -f;
sudo apt-get install --yes openjdk-7-jdk;

# Install generic required packages
sudo apt-get install --yes git-core gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5 lib32z1 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python;
sudo apt-get install --yes mingw32 lib32bz2-dev lib32bz2-1.0;
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so;

# Install additional required packages
sudo apt-get install --yes curl git schedtool libxml2-utils gperf maven liblz4-dev liblz4-tool;
sudo apt-get install --yes android-tools-adb android-tools-fastboot policycoreutils;
sudo apt-get install --yes ncurses-dev;
sudo apt-get install --yes ccache lzop;

# Install repo binary
if [ ! -d ~/bin ]; then
  mkdir ~/bin;
fi;
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo;
chmod a+x ~/bin/repo;

# Configure the .bashrc exports
echo "";
echo "";
echo " [ Copy, Paste & Adapt these lines at the end of .bashrc ]";
echo "";
echo "export PATH=~/bin:\$PATH;";
echo "export USE_CCACHE=1;";
echo "export USE_PREBUILT_CACHE=1;";
echo "export CCACHE_DIR=/media/$(whoami)/AndroidDev/CCache;";
echo "export CCACHE_LOGFILE=/media/$(whoami)/AndroidDev/CCache/ccache.log;";
echo "source $(pwd)/android_bash.rc;";
echo "";
sudo gedit ~/.bashrc;

# Done
TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;
