#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePath1="system/framework/";
FileName1="framework-res.apk";
FilePath2="system/priv-app/SettingsProvider/";
FileName2="SettingsProvider.apk";
FilePath3="system/lib/";
FileName3="libandroid_servers.so";
FilePath4="system/framework/";
FileName4="services.jar";
FilePath5="system/priv-app/SystemUI/";
FileName5="SystemUI.apk";
TargetDir="$Target";

if [ -f $Target/$FileName1 ]; then rm $Target/$FileName1; fi;
if [ -f $Target/$FileName2 ]; then rm $Target/$FileName2; fi;
if [ -f $Target/$FileName3 ]; then rm $Target/$FileName3; fi;
if [ -f $Target/$FileName4 ]; then rm $Target/$FileName4; fi;
if [ -f $Target/$FileName5 ]; then rm $Target/$FileName5; fi;
cd $AndroidDir/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast $PhoneName;
mmm -j8 ./frameworks/base/core/res/;
mmm -j8 ./frameworks/base/packages/SettingsProvider/;
mmm -j8 ./frameworks/base/packages/SystemUI/;
mmm -j8 ./frameworks/base/services/;

TimeDiff=$(($(date +%s)-$TimeStart));
if [ "$(ls -A $TargetDir)" ]; then
  cp $OutDir/$FilePath1$FileName1 $TargetDir/$FileName1;
  cp $OutDir/$FilePath2$FileName2 $TargetDir/$FileName2;
  cp $OutDir/$FilePath3$FileName3 $TargetDir/$FileName3;
  cp $OutDir/$FilePath4$FileName4 $TargetDir/$FileName4;
  cp $OutDir/$FilePath5$FileName5 $TargetDir/$FileName5;
fi;
echo "";
echo "  \"adb push $FileName1 /$FilePath1$FileName1 & adb push $FileName2 /$FilePath2$FileName2 & adb push $FileName3 /$FilePath3$FileName3 & adb push $FileName4 /$FilePath4$FileName4 & adb push $FileName5 /$FilePath5$FileName5\"";
echo "";

adbPush=1;
while [ $adbPush ]
do
  echo "";
  echo " [ Upload new library files - Recovery / USB / mount system ]";
  echo "";
  printf "  Press enter to continue...";
  read key;

  echo "";
  $ScriptDir/android_root_adb.sh;
  cd $OutDir/;
  adb push $FilePath1$FileName1 /$FilePath1$FileName1;
  adb push $FilePath2$FileName2 /$FilePath2$FileName2;
  adb push $FilePath3$FileName3 /$FilePath3$FileName3;
  adb push $FilePath4$FileName4 /$FilePath4$FileName4;
  adb push $FilePath5$FileName5 /$FilePath5$FileName5;
  if [ $? == 0 ]; then adbPush=0;
  else continue; fi;

  echo "";
  printf "  Press enter to reboot...";
  read key;
  echo "";
  echo " Rebooting...";
  sleep 5;
  adb reboot;

  echo "";
  echo " [ Done in $TimeDiff secs ]";
  echo "";
  read key;
done;

