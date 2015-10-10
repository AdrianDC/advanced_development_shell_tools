#!/bin/bash
ScriptDir=$PWD;
ScriptsDir=$ScriptDir;
FullTimeStart=$(date +%s);
source $ScriptsDir/android_set_variables.rc;

if [ ! -z $AndroidDev ]; then

  cd $ScriptsDir/;
  source $ScriptsDir/android_sync_github.sh "automatic";

  cd $ScriptsDir/;
  source $ScriptsDir/android_rebase.sh "automatic";

fi;

cd $ScriptsDir/;
source $ScriptsDir/android_sync_force.sh "automatic";

cd $ScriptsDir/;
source $ScriptsDir/android_make_addons.sh "automatic" $1;

cd $ScriptsDir/;
source $ScriptsDir/android_server_upload.sh $AndroidResult "CM-12.1-Addons" "automatic";

FullTimeDiff=$(($(date +%s)-$FullTimeStart));
echo "";
echo " [ Done in $FullTimeDiff secs ]";
echo "";

if [[ "$1" == "" ]]; then
  read key;
fi;

