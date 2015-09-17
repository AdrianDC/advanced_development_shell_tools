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
  if [ -f $OutDir/system/build.prop ]; then rm -f $OutDir/system/build.prop; fi;
  breakfast $PhoneName;
  make installclean;
  brunch $PhoneName | tee $LogFile;
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

rm -f $ANDROID_PRODUCT_OUT/*$PhoneName-ota-*.zip
rm -f $ANDROID_PRODUCT_OUT/*.zip.md5sum
if [ "$(ls -A $TargetDir)" ]; then
  cp $ANDROID_PRODUCT_OUT/*-UNOFFICIAL*.zip $TargetDir/;
fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
if [[ "$1" == "" ]]; then
  read key;
fi;
echo "";

