#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

$ScriptDir/android_rebase.sh "automatic";
$ScriptDir/android_sync.sh "automatic";
$ScriptDir/android_make_addons.sh "automatic";

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
read key;
