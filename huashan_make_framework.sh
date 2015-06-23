#!/bin/bash
timestart=$(date +%s);
filepath="system/framework/";
filename1="framework.jar";
filename2="framework-res.apk";

if [ -f /media/sf_Desktop/$filename1 ]; then rm /media/sf_Desktop/$filename1; fi;
if [ -f /media/sf_Desktop/$filename2 ]; then rm /media/sf_Desktop/$filename2; fi;
if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd /media/Android/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast huashan;
make -j8 framework;

timediff=$(($(date +%s)-$timestart));
cp /media/Android/out/target/product/huashan/$filepath$filename1 /media/sf_Desktop/$filename1;
cp /media/Android/out/target/product/huashan/$filepath$filename2 /media/sf_Desktop/$filename2;
echo "";
echo " [ adb push $filename1 /$filepath$filename1 & adb push $filename2 /$filepath$filename2 ]";

while [ 1 ]
do
  echo "";
  echo " [ Upload new library files - Recovery / USB / mount system ]";
  echo "";
  printf "  Press enter to continue...";
  read key;

  echo "";
  cd /media/Android/out/target/product/huashan/;
  adb push $filepath$filename1 /$filepath$filename1;
  adb push $filepath$filename2 /$filepath$filename2;
  echo "";
  echo " Rebooting...";
  sleep 5;
  adb reboot;

  echo "";
  echo " [ Done in $timediff secs ]";
  echo "";
  read key;
done;

