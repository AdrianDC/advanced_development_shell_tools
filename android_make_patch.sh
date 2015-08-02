#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePaths=("boot.img" \
           "system/framework/android.policy.jar" \
           "system/framework/framework.jar" \
           "system/framework/framework-res.apk" \
           "system/framework/services.jar" \
           "system/framework/telephony-common.jar" \
           "system/framework/wifi-service.jar" \
           "system/lib/libandroid_servers.so" \
           "system/lib/libhardware.so" \
           "system/lib/modules/*" \
           "system/priv-app/Dialer/Dialer.apk" \
           "system/priv-app/Settings/Settings.apk" \
           "system/priv-app/SettingsProvider/SettingsProvider.apk" \
           "system/priv-app/SystemUI/SystemUI.apk" \
           "system/priv-app/Telecom/Telecom.apk" \
           "system/lib/hw/lights.msm8960.so" \
           "system/lib/hw/sensors.msm8960.so" \
           );
ModulesNames=("bootimage" \
              "libandroid_servers" \
              "android.policy" \
              "services" \
              "framework-res" \
              "framework" \
              "Keyguard" \
              "telephony-common" \
              "wifi-service" \
              "libhardware" \
              "Dialer" \
              "Settings" \
              "SettingsProvider" \
              "SystemUI" \
              "Telecom" \
              "lights.msm8960" \
              "sensors.msm8960" \
              );

for FilePath in ${FilePaths[*]}
do
  if [[ -f $TargetDir/$FilePath ]]; then rm $TargetDir/$FilePath; fi;
done;

echo "";
echo " [ Making the requested libraries ]";
echo "";
cd $AndroidDir/;
source ./build/envsetup.sh;
croot;
breakfast $PhoneName;
mka -j 8 ${ModulesNames[*]} | tee $LogFile;
InstallLog=$(grep "Install:.*target/product" $LogFile | sort | uniq);
echo "$InstallLog";
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
if [ "$(ls -A $TargetDir)" ]; then
  for FilePath in ${FilePaths[*]}
  do
    FileDir=$(dirname $TargetDir/$FilePath);
    mkdir -p $FileDir;
    cp $OutDir/$FilePath $FileDir/;
  done;
fi;

echo "";
printf "  Windows : \"adb root & adb wait-for-device & adb remount";
for FilePath in ${FilePaths[*]}
do
  if [[ $InstallLog == *"$FilePath"* ]]; then
    FileDir=$(dirname /$FilePath);
    printf " & adb push $FilePath /$FileDir/";
  fi;
done;
echo " & pause & adb reboot\"";
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
  for FilePath in ${FilePaths[*]}
  do
    if [[ $InstallLog == *"$FilePath"* ]]; then
      FileDir=$(dirname /$FilePath);
      adb push $OutDir/$FilePath /$FileDir/;
    fi;
  done;
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

