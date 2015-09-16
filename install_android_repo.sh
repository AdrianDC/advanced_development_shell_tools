#!/bin/bash
ScriptDir=$PWD;
MainDir=$ScriptDir/..;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

echo "";
echo "";
echo " [ Installing the repo components ]";
echo "";

sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update && sudo apt-get install openjdk-7-jdk

sudo apt-get install git-core gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32ncurses5 lib32z1 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc readline-common libreadline6-dev libreadline6 lib32readline-gplv2-dev libncurses5-dev lib32readline5 lib32readline6 libreadline-dev libreadline6-dev:i386 libreadline6:i386 bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev libsdl1.2-dev libesd0-dev squashfs-tools pngcrush schedtool libwxgtk2.8-dev python
sudo apt-get install mingw32 lib32bz2-dev lib32bz2-1.0
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

git config --global user.name "$GitEMail"
git config --global user.email "$GitUserName"

echo "";
echo "";
echo " [ Copy, Paste & Adapt these lines at the end of .bashrc ]";
echo "";
echo "export PATH=~/bin:$PATH";
echo "export USE_CCACHE=1";
echo "export CCACHE_DIR=/media/adriandc/AndroidWork/CCache";
echo "export CCACHE_LOGFILE=/media/adriandc/AndroidWork/CCache/ccache.log";
echo "";
sudo gedit ~/.bashrc

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;
