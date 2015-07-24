#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePath="boot.img";
ModulesNames=("bootimage");

if [ -f $TargetDir/$FilePath ]; then rm $TargetDir/$FilePath; fi;

echo "";
echo " [ Making the requested libraries ]";
echo "";
cd $AndroidDir/;
source ./build/envsetup.sh;
croot;
breakfast $PhoneName;
cd $AndroidDir/;
mka -j 8 ${ModulesNames[*]} | tee $LogFile;
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
if [ "$(ls -A $TargetDir)" ]; then
  cp $OutDir/$FilePath $TargetDir/$FilePath;
fi;

echo "";
echo "  \"fastboot flash boot $FilePath & fastboot reboot\"";
echo "";

adbPush=1;
while [ $adbPush ]
do
  echo "";
  echo " [ Upload new kernel - Bootloader USB ]";
  echo "";
  echo "";
  cd $OutDir/;
  sudo fastboot flash boot $FilePath;
  sudo fastboot reboot;

  echo "";
  echo " [ Done in $TimeDiff secs ]";
  echo "";
  read key;
done;

