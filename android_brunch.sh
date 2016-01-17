#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Loading the sources ]";
echo "";
source ./build/envsetup.sh;
croot;
echo "";

LaunchBuild=1;
while [ $LaunchBuild != 0 ];
do

  echo "";
  echo " [ Building the branch ]";
  echo "";
  if [ -f "$OutDir/system/build.prop" ]; then
    rm -f "$OutDir/system/build.prop";
  fi;
  if [ -f "$OutDir/obj/ETC/system_build_prop_intermediates/build.prop" ]; then
    rm -f "$OutDir/obj/ETC/system_build_prop_intermediates/build.prop";
  fi;
  if [ -f "$OutDir/ota_temp/RECOVERY/RAMDISK/default.prop" ]; then
    rm -f "$OutDir/ota_temp/RECOVERY/RAMDISK/default.prop";
  fi;
  if [ -f "$OutDir/recovery/root/default.prop" ]; then
    rm -f "$OutDir/recovery/root/default.prop";
  fi;
  breakfast $PhoneName;
  brunch $PhoneName | tee $LogFile;
  echo "";

  if [ -z "$(grep -a "make failed to build" $LogFile | uniq)" ]; then
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

rm -f $ANDROID_PRODUCT_OUT/*$PhoneName-ota-*.zip;
rm -f $ANDROID_PRODUCT_OUT/*.zip.md5sum;

InstallLog=$(grep -a ".*target/product.*.zip" $LogFile);
AndroidResult=$(printf "$InstallLog" | tail -1\
              | sed "s/\x1B\[[0-9;]*[JKmsu]//g"\
              | sed "s/.*$PhoneName\/\([^\[]*.zip\).*/\1/g");

if [ -z "$AndroidResult" ]; then
  export AndroidResult="";

else
  export AndroidResult="$ANDROID_PRODUCT_OUT/$AndroidResult";

  if [ "$(ls -A $TargetDir)" ]; then
    cp "$AndroidResult" $TargetDir/;
  fi;
fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "   AndroidResult: $AndroidResult";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
  read key;
fi;
echo "";
