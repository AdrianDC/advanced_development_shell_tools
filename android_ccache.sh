#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ CCache ]";
echo "";
source $ScriptDir/$PhoneName_set_ccache.rc;
./prebuilts/misc/linux-x86/ccache/ccache -M 80G;
echo "";

watch -d ./prebuilts/misc/linux-x86/ccache/ccache -s;
echo "";

