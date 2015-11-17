#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

FilesList="./boot.img ./system.img";

cd $AndroidDir/;

echo "";
echo " [ Loading the sources ]";
echo "";
source ./build/envsetup.sh;
croot;
echo "";

if [[ "$2" =~ "manual" ]]; then
  ROMFile="aosp-6.0.0-"$(date +'%Y%m%d')"-DEBUG-WIP-$PhoneName-TEST.zip";
else
  ROMFile="aosp-6.0.0-"$(date +'%Y%m%d')"-DEBUG-WIP-$PhoneName.zip";
fi;

LaunchBuild=1;
while [ $LaunchBuild != 0 ];
do

  echo "";
  echo " [ Building the branch ]";
  echo "";
  if [ -f "$OutDir/system/build.prop" ]; then
    rm -f "$OutDir/system/build.prop";
  fi;
  lunch aosp_huashan-userdebug;
  #make -j$BuildJobs bootimage | tee $LogFile;
  make -j$BuildJobs otapackage | tee $LogFile;
  #make -j1 keycheck extract_elf_ramdisk bootimage | tee $LogFile;
  echo "";

  if [ -z "$(grep "make failed to build" $LogFile | uniq)" ]; then
    LaunchBuild=0;
  elif [ ! -z "$1" ]; then
    return;
  else
    LaunchBuild=1;
    printf " Press Enter to restart the build... ";
    read key;
    echo "";
    echo "";
  fi;

done;

if [ -f "$TargetDir/$ROMFile" ]; then
  rm -f "$TargetDir/$ROMFile";
fi;

rm -f $ANDROID_PRODUCT_OUT/*.zip.md5sum;

InstallLog=$(grep ".*target/product.*-ota-.*.zip" $LogFile);
AndroidResult=$(printf "$InstallLog" | tail -1\
              | sed "s/\x1B\[[0-9;]*[JKmsu]//g"\
              | sed "s/.*$PhoneName\/\([^\[]*.zip\).*/\1/g");

if [ -f "$ANDROID_PRODUCT_OUT/$AndroidResult" ]; then
  mv "$ANDROID_PRODUCT_OUT/$AndroidResult" "$TargetDir/$ROMFile";
  export AndroidResult="$TargetDir/$ROMFile";
else
  export AndroidResult="";
  #export AndroidResult="$ANDROID_PRODUCT_OUT/boot.img";
fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  nautilus "$ANDROID_PRODUCT_OUT/" >/dev/null 2>&1;
  read key;
fi;
echo "";
