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

echo "";
echo " [ Building the branch ]";
echo "";
if [ -f $OutDir/system/build.prop ]; then rm -f $OutDir/system/build.prop; fi;
breakfast $PhoneName;
brunch $PhoneName;
echo "";

rm -f $ANDROID_PRODUCT_OUT/cm_$PhoneName-ota-*.zip
rm -f $ANDROID_PRODUCT_OUT/cm-*.zip.md5sum
if [ "$(ls -A $TargetDir)" ]; then
  cp $ANDROID_PRODUCT_OUT/cm-12.1-$(date +'%Y%m%d')-UNOFFICIAL-$PhoneName.zip $TargetDir/;
fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
read key;
