#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ CCache ]";
echo "";
./prebuilts/misc/linux-x86/ccache/ccache -M 80G;
echo "";

watch -d ./prebuilts/misc/linux-x86/ccache/ccache -s;
echo "";

