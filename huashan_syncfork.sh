#!/bin/bash

if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd /media/Android/;

echo "";
echo " [ Cloning the remote repositories ]";
echo "";
echo "";

while [ 1 ];
do

    timestart=$(date +%s);
    echo " [ Start syncing ]";
    echo "";

    repo sync -j8 -f device/sony/huashan \
                     device/sony/msm8960-common \
                     hardware/sony/DASH \
                     kernel/sony/msm8x60 \
                     vendor/sony \
                     frameworks/base \
                     packages/apps/Settings \
                     bootable/recovery \
                     hardware/libhardware \
                     ;

    timediff=$(($(date +%s)-$timestart));
    echo "";
    echo " [ Done in $timediff secs ]";
    echo "";
    read key;

done;

