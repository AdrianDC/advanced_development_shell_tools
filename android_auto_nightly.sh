#!/bin/bash
ScriptDir=$PWD;
ScriptsDir=$ScriptDir;
FullTimeStart=$(date +%s);
BuildMode="$2";
source $ScriptsDir/android_set_variables.rc;
source $ScriptsDir/bash_huashan.rc;

if [[ ! "$BuildMode" == "test" ]]; then

  cd $AndroidDir/;
  reposa;

fi;

if ls "$AndroidDir/device/sony/$PhoneName/"*.dependencies 1> /dev/null 2>&1; then
  rm "$AndroidDir/device/sony/$PhoneName/"*.dependencies;
fi;

if [[ ! "$BuildMode" == "test" ]]; then
  if [ -d "$OutDir/system" ]; then
    rm -rf "$OutDir/system";
  fi;
fi;

cd $ScriptsDir/;
source $ScriptsDir/android_brunch.sh "automatic";

if [[ ! "$BuildMode" == "local" ]]; then
  cd $ScriptsDir/;
  if [[ ! "$BuildMode" == "test" ]]; then
    source $ScriptsDir/android_server_upload.sh "$AndroidResult" "CM-13.0-Nightly" "automatic";
  else
    source $ScriptsDir/android_server_upload.sh "$AndroidResult" "Android-Developers" "automatic";
  fi;
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
