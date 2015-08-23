#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePath="boot.img";
ModulesNames=("bootimage");

if [ -f $TargetDir/$FilePath ]; then rm $TargetDir/$FilePath; fi;

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
  mka -j $BuildJobs ${ModulesNames[*]} | tee $LogFile;
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

