#!/bin/bash
ScriptsDir=$PWD;
FullTimeStart=$(date +%s);
source $ScriptsDir/android_set_variables.rc;

cd $ScriptsDir/;
source $ScriptsDir/android_rebase.sh "automatic";

cd $ScriptsDir/;
source $ScriptsDir/android_sync.sh "automatic";

cd $ScriptsDir/;
source $ScriptsDir/android_make_addons.sh "automatic";

cd $ScriptsDir/;
source $ScriptsDir/android_server_upload.sh $AndroidResult "automatic";

FullTimeDiff=$(($(date +%s)-$FullTimeStart));
echo "";
echo " [ Done in $FullTimeDiff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
read key;
