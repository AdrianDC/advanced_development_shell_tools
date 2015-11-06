#!/bin/bash
source /media/adriandc/AndroidDev/Server/Vars.rc;
BuildLog="$ScriptsLog.NightlySync.log";

# Launch Mode
BuildMode="manual";
if [ ! -z "$1" ]; then
  BuildMode="$1";
fi;

# Choose ROM
cd $ScriptsDir;
ScriptDir=$ScriptsDir;
source $ScriptsDir/android_choose_rom.sh 3 y n 2>&1 | tee $BuildLog;
source $ScriptsDir/android_set_variables.rc;
source $ScriptsDir/bash_huashan.rc;

# Sync Repo
cd $AndroidDir/;
reposa;

# Update script logs
source $ServerDir/LogsSync.sh;

# CronTab End
if [[ "$1" == "" ]]; then
  read key;
fi;
