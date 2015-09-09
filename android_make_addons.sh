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
AddonsFile="addons-cm-12.1-"$(date +'%Y%m%d')"-NIGHTLY-huashan.zip";

if [ -f $TargetDir/$AddonsFile ]; then
  rm -f $TargetDir/$AddonsFile;
fi;

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

cd $OutDir;
FilesList="";
for FilePath in ${FilePaths[*]}
do
  FilesList="$FilesList ./$FilePath";
done;

echo "";
echo " [ Building the new zip ]";
echo "";

cp $ScriptDir/addons_template.zip $TargetDir/$AddonsFile.unsigned.zip;
zip -g $TargetDir/$AddonsFile.unsigned.zip $FilesList;
SignApkDir=$ScriptDir/android_signapk;
java -jar $SignApkDir/signapk-cm121.jar -w $SignApkDir/testkey.x509.pem $SignApkDir/testkey.pk8 $TargetDir/$AddonsFile.unsigned.zip $TargetDir/$AddonsFile;
rm -f $TargetDir/$AddonsFile.unsigned.zip;

echo "";
echo "  $AddonsFile created.";
echo "";
TimeDiff=$(($(date +%s)-$TimeStart));

echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

