#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
KernelPath="boot.img";
MakeClean=( \
           "root/file_contexts" \
           "root/property_contexts" \
           "root/seapp_contexts" \
           "root/selinux_version" \
           "root/sepolicy" \
           "root/service_contexts" \
           "system/etc/general_file_contexts" \
           "system/etc/general_property_contexts" \
           "system/etc/general_seapp_contexts" \
           "system/etc/general_service_contexts" \
           "system/etc/security/mac_permissions.xml" \
           "system/etc/sepolicy.recovery" \
           );
FilePaths=( \
           "system/lib/modules/*" \
           "system/etc/general_file_contexts" \
           "system/etc/general_property_contexts" \
           "system/etc/general_seapp_contexts" \
           "system/etc/general_service_contexts" \
           "system/etc/security/mac_permissions.xml" \
           "system/etc/sepolicy.recovery" \
           );
KernelFile="kernel-"$(date +'%Y%m%d')"-$PhoneName.zip";

if [ -f "$TargetDir/$KernelFile" ]; then
  rm -f "$TargetDir/$KernelFile";
fi;

sudo echo "";
LaunchBuild=1;
if [[ "$1" =~ "test" ]]; then
  LaunchBuild=0;
else
  cd $AndroidDir/;
  source ./build/envsetup.sh;
  croot;
  breakfast $PhoneName;
fi;

if [[ "$1" =~ "clean" ]]; then
  echo "";
  echo " [ Cleaning the previously built kernel ]";
  echo "";
  cd $AndroidDir/kernel/sony/msm8960t/;
  make mrproper;
fi;

while [ $LaunchBuild != 0 ];
do

  echo "";
  echo " [ Making the requested libraries ]";
  echo "";
  sudo echo "";
  cd $OutDir/;
  rm -fv ${MakeClean[*]};
  cd $AndroidDir/;
  mmm -B -j8 ./external/sepolicy/ | tee $LogFile;
  if [[ "$1" =~ "fast" ]]; then
    mms bootimage | tee -a $LogFile;
  else
    mka bootimage | tee -a $LogFile;
  fi;
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
echo "  \"fastboot flash boot $KernelPath & fastboot reboot\"";
echo "";

echo "";
echo " [ Building the new zip ]";
echo "";

cd $OutDir;
FilesList="./$KernelPath ";
for FilePath in ${FilePaths[*]}
do
  if [ -f "./$FilePath" ]; then
    FilesList="$FilesList ./$FilePath";
  else
    echo "  File not found, ignored : /$FilePath";
  fi;
done;

cp "$ScriptDir/android_files/kernel_template.zip" "$TargetDir/$KernelFile.unsigned.zip";
zip -g "$TargetDir/$KernelFile.unsigned.zip" $FilesList;
SignApkDir=$ScriptDir/android_signapk;
java -jar "$SignApkDir/signapk-cm121.jar" -w "$SignApkDir/testkey.x509.pem" "$SignApkDir/testkey.pk8" "$TargetDir/$KernelFile.unsigned.zip" "$TargetDir/$KernelFile";
rm -f "$TargetDir/$KernelFile.unsigned.zip";

export AndroidResult=$TargetDir/$KernelFile;

adbPush=1;
while [ $adbPush != 0 ];
do
  echo "";
  echo "";
  echo " [ Upload new modules files - Debugging USB ]";
  echo "";
  printf "  Proceed with the modules (Y/n) ? ";
  read key;
  if [[ "$key" == "n" || "$key" == "N" ]]; then
    echo "";
    adbPush=0;
  fi;

  if [ $adbPush == 1 ]; then
    echo "";
    adbPush=0;
    sudo $ScriptDir/android_root_adb.sh;
    OutDir=$AndroidDir/out/target/product/$PhoneName;
    for FilePath in ${FilePaths[*]}
    do
      adb push "$OutDir/$FilePath" "/$FilePath";
      if [ $? != 0 ]; then adbPush=1; fi;
    done;
  fi;

  if [ $adbPush == 0 ]; then
    echo "";
    echo " Rebooting to bootloader...";
    echo "";
    sleep 5;
    adb reboot bootloader;
  fi;
done;

echo "";
echo "";
echo " [ Upload new kernel - Bootloader USB ]";
echo "";
echo "";
cd $OutDir/;
sudo fastboot flash boot "$KernelPath";
sudo fastboot reboot;

echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;
