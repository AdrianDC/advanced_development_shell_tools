#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePath="";
FileName="boot.img";

if [ -f $Target/$FileName ]; then rm $Target/$FileName; fi;
cd $AndroidDir/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast $PhoneName;
cd $AndroidDir/;
mka -j8 bootimage;

TimeDiff=$(($(date +%s)-$TimeStart));
cp $OutDir/$FilePath$FileName $Target/$FileName;
echo "";
echo "  \"fastboot flash boot $FileName & fastboot reboot\"";
echo "";

adbPush=1;
while [ $adbPush ]
do
  echo "";
  echo " [ Upload new kernel - Bootloader USB ]";
  echo "";
  echo "";
  cd $OutDir/;
  sudo fastboot flash boot $FileName;
  sudo fastboot reboot;

  echo "";
  echo " [ Done in $TimeDiff secs ]";
  echo "";
  read key;
done;

