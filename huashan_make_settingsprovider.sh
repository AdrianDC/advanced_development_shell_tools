#!/bin/bash
scriptdir=$PWD;
timestart=$(date +%s);
filepath="system/priv-app/SettingsProvider/";
filename="SettingsProvider.apk";
filetarget="/media/sf_Desktop";

if [ -f /media/sf_Desktop/$filename ]; then rm /media/sf_Desktop/$filename; fi;
if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd ./Android/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast huashan;
mmm -j8 ./frameworks/base/packages/SettingsProvider/;

timediff=$(($(date +%s)-$timestart));
if [ "$(ls -A $filetarget)" ]; then
  cp ./out/target/product/huashan/$filepath$filename $filetarget/$filename;
fi;
echo "";
echo "  \"adb push $filename /$filepath$filename\"";
echo "";

while [ 1 ]
do
  echo "";
  echo " [ Upload new library files - Recovery / USB / mount system ]";
  echo "";
  printf "  Press enter to continue...";
  read key;

  echo "";
  $scriptdir/root_adb.sh;
  cd ./out/target/product/huashan/;
  adb push $filepath$filename /$filepath$filename;
  echo "";
  echo " Rebooting...";
  sleep 5;
  adb reboot;

  echo "";
  echo " [ Done in $timediff secs ]";
  echo "";
  read key;
done;

