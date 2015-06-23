#!/bin/bash
timestart=$(date +%s);

if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd /media/Android/;

echo "";
echo " [ Cloning the remote repositories ]";
echo "";

cd ./device/sony/huashan/;
git stash;
cd /media/Android/;
repo sync -j8 -f device/sony/huashan \
                 device/sony/msm8960-common \
                 hardware/sony/DASH \
                 kernel/sony/msm8x60 \
                 kernel/sony/msm8x60test \
                 vendor/sony \
                 frameworks/base \
                 packages/apps/Settings \
                 ;

#cd ./hardware/sony/DASH/;
#git stash;
#cd /media/Android/;
#repo sync -j8 -f ;

#cd ./kernel/sony/msm8x60/;
#git remote add testremote https://github.com/Mrcl1450/android_kernel_sony_msm8x60.git;
#git pull testremote cm-12.1_cpu -f;
#echo "";

timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

