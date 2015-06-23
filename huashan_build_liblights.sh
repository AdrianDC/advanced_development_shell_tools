#!/bin/bash
timestart=$(date +%s);
filepath="system/lib/hw/";
filename="lights.msm8960.so";

if [ -f /media/sf_Desktop/$filename ]; then rm /media/sf_Desktop/$filename; fi;
if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd /media/Android/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast huashan;
mmm ./device/sony/msm8960-common/liblights/;

while [ 1 ]
do
  echo "";
  echo " [ Upload new library files - Recovery / USB / mount system ]";
  echo "";
  printf "  Press enter to continue...";
  read key;

  echo "";
  cd /media/Android/out/target/product/huashan/;
  adb push system/lib/hw/lights.msm8960.so /system/lib/hw/lights.msm8960.so;

  timediff=$(($(date +%s)-$timestart));
  echo "";
  echo " [ Done in $timediff secs ]";
  echo "";
  read key;
done;

