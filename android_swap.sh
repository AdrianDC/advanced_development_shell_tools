#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

echo "";
echo " [ Setting Swap File ]";
echo "";
sudo swapon $SwapFile;
sudo swapon -s;
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

