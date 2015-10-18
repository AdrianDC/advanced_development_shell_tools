#!/bin/bash
ScriptDir=$PWD;
ScriptsDir=$ScriptDir;
FullTimeStart=$(date +%s);
source $ScriptsDir/android_set_variables.rc;

cd $ScriptsDir/;
source $ScriptsDir/android_sync_github.sh "automatic";

if [ ! -z $AndroidDev ]; then
  cd $ScriptsDir/;
  source $ScriptsDir/android_rebase.sh "automatic";
fi;

cd $ScriptsDir/;
if [ ! -z "$AndroidForce" ]; then
  source $ScriptsDir/android_sync_force.sh "automatic";
else
  source $ScriptsDir/android_sync.sh "automatic";
fi;

if ls "$AndroidDir/device/sony/$PhoneName/"*.dependencies 1> /dev/null 2>&1; then
  rm "$AndroidDir/device/sony/$PhoneName/"*.dependencies;
fi;

cd $ScriptsDir/;
source $ScriptsDir/android_brunch.sh "automatic";

cd $ScriptsDir/;
source $ScriptsDir/android_server_upload.sh "$AndroidResult" "Android-ROMs" "automatic";

FullTimeDiff=$(($(date +%s)-$FullTimeStart));
echo "";
if [ -f "$AndroidResult" ]; then
  echo " [ Build : Success in $FullTimeDiff secs ]";
else
  echo " [ Build : Fail in $FullTimeDiff secs ]";
fi;
echo "";

if [ -z "$2" ]; then
  read key;
fi;
