#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

# =====================================================================================
UserName="$(whoami)";
sudo chown -cR $UserName:$UserName $CCacheDir/;

# =====================================================================================
TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;
