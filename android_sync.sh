#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Syncing repositories ]";
echo "";
repo sync -j $BuildJobs -f --force-sync;
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
