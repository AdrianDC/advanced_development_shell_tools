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

    repo sync -j $BuildJobs -f device/sony/$PhoneName \
                               hardware/sony/DASH \
                               kernel/sony/msm8x60 \
                               vendor/sony \
                               frameworks/base \
                               packages/apps/Settings \
                               bootable/recovery \
                               hardware/libhardware \
                               ;

    TimeDiff=$(($(date +%s)-$TimeStart));
    echo "";
    echo " [ Done in $TimeDiff secs ]";
    echo "";
    read key;

done;

