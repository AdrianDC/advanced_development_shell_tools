#!/bin/bash
ScriptDir=$PWD;
ScriptsDir=$ScriptDir;
FullTimeStart=$(date +%s);
BuildMode="$2";
source $ScriptsDir/android_set_variables.rc;

if [[ ! "$BuildMode" == "test" ]]; then

  cd $ScriptsDir/;
  source $ScriptsDir/android_sync_github.sh "automatic";

  if [ ! -z "$AndroidDev" ]; then
    cd $ScriptsDir/;
    source $ScriptsDir/android_rebase.sh "automatic";
  fi;

  cd $ScriptsDir/;
  if [ ! -z "$AndroidForce" ]; then
    source $ScriptsDir/android_sync_force.sh "automatic";
  else
    source $ScriptsDir/android_sync.sh "automatic";
  fi;

fi;

if ls "$AndroidDir/device/sony/$PhoneName/"*.dependencies 1> /dev/null 2>&1; then
  rm "$AndroidDir/device/sony/$PhoneName/"*.dependencies;
fi;

cd $ScriptsDir/;
source $ScriptsDir/android_brunch.sh "automatic";

if [[ ! "$BuildMode" == "test" ]]; then

  cd $ScriptsDir/;
  source $ScriptsDir/android_server_upload.sh "$AndroidResult" "Android-ROMs" "automatic";

fi;

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
