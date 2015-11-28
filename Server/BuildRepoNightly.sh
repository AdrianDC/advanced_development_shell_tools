#!/bin/bash
source /media/adriandc/AndroidDev/Server/Vars.rc;
BuildLog="$ScriptsLog.NightlySync.log";

# Launch Mode
BuildMode="manual";
if [ ! -z "$1" ]; then
  BuildMode="$@";
fi;

# Choose ROM
cd $ScriptsDir;
ScriptDir=$ScriptsDir;
source $ScriptsDir/android_choose_rom.sh 3 y n 2>&1 | tee "$BuildLog";
source $ScriptsDir/android_set_variables.rc;
source $BashsDir/bash_huashan.rc;

# Sync Repo
cd $AndroidDir/;
reposa "$BuildMode";

# Update script logs
if [[ "$BuildMode" =~ "automatic" ]]; then
  source $ServerDir/LogsSync.sh;
fi;

# Notification
notify-send "Done syncing !";

# CronTab End
if [ -z "$1" ]; then
  read key;
fi;
