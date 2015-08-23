#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePaths=(\
           "boot.img" \
           "system/lib/modules/*" \
           "system/framework/android.policy.jar" \
           "system/framework/framework.jar" \
           "system/framework/framework-res.apk" \
           "system/framework/org.cyanogenmod.hardware.jar" \
           "system/framework/services.jar" \
           "system/framework/telephony-common.jar" \
           "system/framework/wifi-service.jar" \
           "system/lib/libandroid_servers.so" \
           "system/lib/libhardware.so" \
           "system/priv-app/Dialer/Dialer.apk" \
           "system/priv-app/SensorsDoze/SensorsDoze.apk" \
           "system/priv-app/Settings/Settings.apk" \
           "system/priv-app/SettingsProvider/SettingsProvider.apk" \
           "system/priv-app/SystemUI/SystemUI.apk" \
           "system/priv-app/Telecom/Telecom.apk" \
           "system/lib/hw/lights.msm8960.so" \
           );
ModulesNames=(\
              "bootimage" \
              "libandroid_servers" \
              "android.policy" \
              "org.cyanogenmod.hardware" \
              "services" \
              "framework-res" \
              "framework" \
              "sepolicy" \
              "Keyguard" \
              "telephony-common" \
              "wifi-service" \
              "libhardware" \
              "Dialer" \
              "SensorsDoze" \
              "Settings" \
              "SettingsProvider" \
              "SystemUI" \
              "Telecom" \
              "lights.msm8960" \
              );

for FilePath in ${FilePaths[*]}
do
  if [[ -f $TargetDir/$FilePath ]]; then rm $TargetDir/$FilePath; fi;
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
  if [[ "$1" == "" ]]; then
    mka -j 4 ${ModulesNames[*]} | tee $LogFile;
  fi;

  LogMemory=$(grep "make: fork" $LogFile | sort | uniq);
  LogFail=$(grep "fail" $LogFile | sort | uniq);
  LogError=$(grep "Error" $LogFile | sort | uniq);
  LogInstall=$(grep "Install:.*target/product" $LogFile | sort | uniq);
  echo "$LogMemory";
  echo "$LogFail";
  echo "$LogError";
  echo "$LogInstall";
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
if [ "$(ls -A $TargetDir)" ]; then
  for FilePath in ${FilePaths[*]}
  do
    FileDir=$(dirname $TargetDir/$FilePath | uniq);
    mkdir -p $FileDir;
    cp -r $OutDir/$FilePath $FileDir/;
  done;
fi;

echo "";
printf "  Windows : \"adb root & adb wait-for-device & adb remount";
for FilePath in ${FilePaths[*]}
do
  if [[ $InstallLog == *"$FilePath"* ]]; then
    FileDir=$(dirname /$FilePath);
    printf " & adb push $FilePath $FileDir/";
  fi;
done;
echo " & pause & adb reboot\"";
echo "";

if [ "$1" == "" ]; then

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
        adb push $OutDir/$FilePath $FileDir/;
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

else

  echo "";
  echo " [ Done in $TimeDiff secs ]";
  echo "";
  read key;

fi;

