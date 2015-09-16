#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePaths=("system/vendor/lib/hw/lights.msm8960.so");
FilePaths=("system/priv-app/Dialer/Dialer.apk");

for FilePath in ${FilePaths[*]}
do
  if [ -f $TargetDir/$FilePath ]; then rm $TargetDir/$FilePath; fi;
done;

cd $AndroidDir/;
source ./build/envsetup.sh;
croot;
breakfast $PhoneName;

LaunchBuild=1;
while [ $LaunchBuild != 0 ];
do

  echo "";
  echo " [ Making the requested libraries ]";
  echo "";
  cd $AndroidDir/;
  #mka -j $BuildJobs com.android.phone.common | tee $LogFile;
  mka -B -j $BuildJobs Dialer | tee $LogFile;
  #mmm -B -j8 device/sony/huashan/liblights | tee $LogFile;
  #mmm -B -j8 device/sony/nicki/liblights | tee $LogFile;
  #mmm -B -j8 device/moto/shamu/liblights | tee $LogFile;
  #mmm -B -j8 device/oppo/msm8974-common/liblight | tee $LogFile;
  InstallLog=$(grep "Install:.*target/product" $LogFile | sort | uniq);
  echo "$InstallLog";
  echo "";

  if [ -z "$(grep "make failed to build" $LogFile | uniq)" ]; then
    LaunchBuild=0;
  else
    LaunchBuild=1;
    printf " Press Enter to restart the build... ";
    read key;
    echo "";
    echo "";
  fi;

done;

TimeDiff=$(($(date +%s)-$TimeStart));
for FilePath in "$InstallLog"
do
  FilePath=$(printf "$FilePath" | tr -d '[:cntrl:]' | sed "s/.*$PhoneName\([^\[]*\)/\1/g");
  echo "aaa $FilePath";
  #mkdir -p $(dirname $TargetDir/$FilePath);
  #cp $OutDir/$FilePath $TargetDir/$FilePath;
done;

if [ "$(ls -A $TargetDir)" ]; then
  for FilePath in ${FilePaths[*]}
  do
    mkdir -p $(dirname $TargetDir/$FilePath);
    cp $OutDir/$FilePath $TargetDir/$FilePath;
  done;
fi;

echo "";
printf "  Windows : \"adb root & adb wait-for-device & adb remount";
for FilePath in ${FilePaths[*]}
do
  if [[ $InstallLog == *"$FilePath"* ]]; then
    printf " & adb push $FilePath /$FilePath";
  fi;
done;
echo " & pause & adb reboot\"";
echo "";

adbPush=1;
while [ $adbPush != 0 ];
do
  echo "";
  echo " [ Upload new library files - Recovery / USB / mount system ]";
  echo "";
  printf "  Press enter to continue...";
  read key;

  echo "";
  adbPush=0;
  $ScriptDir/android_root_adb.sh;
  for FilePath in ${FilePaths[*]}
  do
    if [[ $InstallLog == *"$FilePath"* ]]; then
      adb push $OutDir/$FilePath /$FilePath;
      if [ $? != 0 ]; then adbPush=1; fi;
    fi;
  done;

  echo "";
  echo " Rebooting...";
  sleep 5;
  adb reboot;

  echo "";
  echo " [ Done in $TimeDiff secs ]";
  echo "";
  read key;
done;

