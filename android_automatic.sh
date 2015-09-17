#!/bin/bash
ScriptDir=$PWD;
FullTimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

source $ScriptDir/android_rebase.sh "automatic";
source $ScriptDir/android_sync.sh "automatic";
source $ScriptDir/android_make_addons.sh "automatic";
source $ScriptDir/android_server_upload.sh $AndroidResult "automatic";

FullTimeDiff=$(($(date +%s)-$FullTimeStart));
echo "";
echo " [ Done in $FullTimeDiff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
read key;
