#!/bin/bash

adbNoRoot=1;
while [ $adbNoRoot == 1 ]
do
  echo "";
  echo " [ Mounting as root ]";
  echo "";
  adb wait-for-devices;
  adb root;
  if [ $? == 0 ]; then
    adbNoRoot=0;
  else
    sleep 5;
  fi;
done;

adb wait-for-devices;
adb remount;
adb devices;

