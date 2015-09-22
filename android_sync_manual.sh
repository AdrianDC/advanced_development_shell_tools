#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Syncing the remote repositories ]";
echo "";
echo "";

while [ 1 ];
do

    TimeStart=$(date +%s);
    echo " [ Start syncing ]";
    echo "";

    repo sync -j $BuildJobs -f device/sony/nicki \
                               device/moto/shamu \
                               ;

    TimeDiff=$(($(date +%s)-$TimeStart));
    echo "";
    echo " [ Done in $TimeDiff secs ]";
    echo "";
    read key;

done;

