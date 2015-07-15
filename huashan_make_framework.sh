#!/bin/bash
scriptdir=$PWD;
timestart=$(date +%s);
filepath1="system/framework/";
filename1="framework-res.apk";
filepath2="system/priv-app/SettingsProvider/";
filename2="SettingsProvider.apk";
filepath3="system/lib/";
filename3="libandroid_servers.so";
filepath4="system/framework/";
filename4="services.jar";
filepath5="system/priv-app/SystemUI/";
filename5="SystemUI.apk";
filetarget="/media/sf_Desktop";

if [ -f /media/sf_Desktop/$filename1 ]; then rm /media/sf_Desktop/$filename1; fi;
if [ -f /media/sf_Desktop/$filename2 ]; then rm /media/sf_Desktop/$filename2; fi;
if [ -f /media/sf_Desktop/$filename3 ]; then rm /media/sf_Desktop/$filename3; fi;
if [ -f /media/sf_Desktop/$filename4 ]; then rm /media/sf_Desktop/$filename4; fi;
if [ -f /media/sf_Desktop/$filename5 ]; then rm /media/sf_Desktop/$filename5; fi;
if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd ./Android/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast huashan;
mmm -j8 ./frameworks/base/core/res/;
mmm -j8 ./frameworks/base/packages/SettingsProvider/;
mmm -j8 ./frameworks/base/packages/SystemUI/;
mmm -j8 ./frameworks/base/services/;

timediff=$(($(date +%s)-$timestart));
if [ "$(ls -A $filetarget)" ]; then
  cp ./out/target/product/huashan/$filepath1$filename1 $filetarget/$filename1;
  cp ./out/target/product/huashan/$filepath2$filename2 $filetarget/$filename2;
  cp ./out/target/product/huashan/$filepath3$filename3 $filetarget/$filename3;
  cp ./out/target/product/huashan/$filepath4$filename4 $filetarget/$filename4;
  cp ./out/target/product/huashan/$filepath5$filename5 $filetarget/$filename5;
fi;
echo "";
echo "  \"adb push $filename1 /$filepath1$filename1 & adb push $filename2 /$filepath2$filename2 & adb push $filename3 /$filepath3$filename3 & adb push $filename4 /$filepath4$filename4 & adb push $filename5 /$filepath5$filename5\"";
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
  adb push $filepath1$filename1 /$filepath1$filename1;
  adb push $filepath2$filename2 /$filepath2$filename2;
  adb push $filepath3$filename3 /$filepath3$filename3;
  adb push $filepath4$filename4 /$filepath4$filename4;
  adb push $filepath5$filename5 /$filepath5$filename5;

  echo "";
  echo " [ Done in $timediff secs ]";
  echo "";
  read key;
done;

