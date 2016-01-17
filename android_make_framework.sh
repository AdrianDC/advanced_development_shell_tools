#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePaths=("system/framework/framework.jar" \
           "system/framework/framework-res.apk" \
           "system/framework/services.jar.jar" \
           "system/lib/libandroid_servers.so" \
           "system/lib/hw/lights.msm8960.so" \
           "system/priv-app/SettingsProvider/SettingsProvider.apk" \
           "system/priv-app/SystemUI/SystemUI.apk" \
           );
ModulesNames=("SettingsProvider" \
              "SystemUI" \
              "services.core" \
              "services" \
              "framework-res" \
              "framework" \
              );

for FilePath in ${FilePaths[*]}
do
  if [ -f "$TargetDir/$FilePath" ]; then
    rm "$TargetDir/$FilePath";
  fi;
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
  mka -j $BuildJobs ${ModulesNames[*]} | tee $LogFile;
  InstallLog=$(grep -a "Install:.*target/product" $LogFile | sort | uniq);
  echo "$InstallLog";
  echo "";

  if [ -z "$(grep -a "make failed to build" $LogFile | uniq)" ]; then
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
if [ "$(ls -A $TargetDir)" ]; then
  for FilePath in ${FilePaths[*]}
  do
    mkdir -p "$(dirname $TargetDir/$FilePath)";
    cp "$OutDir/$FilePath" "$TargetDir/$FilePath";
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
      adb push "$OutDir/$FilePath" "/$FilePath";
      if [ $? != 0 ]; then adbPush=1; fi;
    fi;
  done;

  if [ $adbPush == 0 ]; then
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
  fi;
done;
