#!/bin/bash
source /media/adriandc/AndroidDev/Server/Vars.rc;

# Phone Name
export PhoneName="$1";
BuildLog="$ScriptsLog.$PhoneName.CM121.log";

# Launch Mode
BuildMode="manual";
if [ ! -z "$1" ]; then
  BuildMode="$@";
fi;

# Compilation Script
cd $ScriptsDir;
source ./android_choose_rom.sh 1 y y 2>&1 | tee $BuildLog;
source ./android_auto_huashan_cm121.sh "automatic" "$BuildMode" 2>&1 | tee -a "$BuildLog";

# Update script logs
source $ServerDir/LogsSync.sh;

# PushBullet Notification
BuildSuccess=$(grep -a "make completed successfully" $BuildLog | uniq);
if [ ! -z "$BuildSuccess" ]; then
  PushBulletComment="CM-12.1 ROM for $PhoneName ready";
else
  PushBulletComment="CM-12.1 ROM for $PhoneName failed";
fi;
notify-send "$PushBulletComment";
source $ServerDir/PushBullet.sh;

# CronTab End
if [ -z "$2" ]; then
  read key;
fi;
