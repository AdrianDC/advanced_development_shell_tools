#!/bin/bash
source /media/adriandc/AndroidDev/Server/Vars.rc;

# Phone Name
export PhoneName="huashan";
BuildLog="$ScriptsLog.$PhoneName.AICP.log";

# Launch Mode
BuildMode="manual";
if [ ! -z "$1" ]; then
  BuildMode="$1";
fi;

# Compilation Script
cd $ScriptsDir;
source ./android_choose_rom.sh 2 n n 2>&1 | tee $BuildLog;
source ./android_auto_huashan_aicp.sh "automatic" "$BuildMode" 2>&1 | tee -a "$BuildLog";

# Update script logs
source $ServerDir/LogsSync.sh;

# PushBullet Notification
BuildSuccess=$(grep -a "make completed successfully" $BuildLog | uniq);
if [ ! -z "$BuildSuccess" ]; then
  PushBulletComment="AICP ROM for $PhoneName ready";
else
  PushBulletComment="AICP ROM for $PhoneName failed";
fi;
notify-send "$PushBulletComment";
source $ServerDir/PushBullet.sh;

# CronTab End
if [ -z "$1" ]; then
  read key;
fi;
