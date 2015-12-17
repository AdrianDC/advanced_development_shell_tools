#!/bin/bash
ScriptDir=$PWD;
source $ScriptDir/android_set_variables.rc;

AndroidROMChoice="$1";
if [ ! -z "$AndroidROMChoice" ]; then
  AndroidROM=${AndroidROMs[$((AndroidROMChoice-1))]};
fi;

echo "";
echo " [ Choose a ROM target ]";
echo "";

AndroidROMCount=0;
AndroidROMDefault=0;
for AndroidROMName in ${AndroidROMs[*]}
do

  AndroidROMCount=$((AndroidROMCount+1));
  printf "  $AndroidROMCount : $AndroidROMName";
  if [[ "$AndroidROMName" == "$AndroidROM" ]]; then
    printf " (*)";
    AndroidROMDefault=$AndroidROMCount;
  fi;
  echo "";

done;

echo "";
if [ -z $AndroidROMChoice ]; then
  echo "";
  printf " > ROM to build (1 to $AndroidROMCount) : ";
  read AndroidROMChoice;
  if [ -z "$AndroidROMChoice" ] || [ $AndroidROMChoice -lt 1 ] || [ $AndroidROMChoice -gt $AndroidROMCount ]; then
    AndroidROMChoice=$AndroidROMDefault;
  fi;
else
  echo "";
  echo " > ROM to build (1 to $AndroidROMCount) : $AndroidROMChoice";
fi;

echo "";
printf " > Automatically rebase the ROM (y/N) : $2";
if [ -z "$2" ]; then
  read AndroidDevChoice;
else
  AndroidDevChoice=$2;
  echo "";
fi;

echo "";
printf " > Force syncing all the repositories (y/N) : $3";
if [ -z "$3" ]; then
  read AndroidForceChoice;
else
  AndroidForceChoice=$3;
  echo "";
fi;

AndroidROM=${AndroidROMs[$((AndroidROMChoice-1))]};
AndroidSync=${AndroidSyncs[$((AndroidROMChoice-1))]};
AndroidTag=${AndroidTags[$((AndroidROMChoice-1))]};
AndroidGitHub=${AndroidGits[$((AndroidROMChoice-1))]};

AndroidDev="";
if [[ $AndroidDevChoice == "y" || $AndroidDevChoice == "Y" ]]; then
  AndroidDev="true";
fi;

AndroidForce="";
if [[ $AndroidForceChoice == "y" || $AndroidForceChoice == "Y" ]]; then
  AndroidForce="true";
fi;

echo "export AndroidROM=\"$AndroidROM\";" > $ScriptDir/android_set_target.rc;
echo "export AndroidTag=\"$AndroidTag\";" >> $ScriptDir/android_set_target.rc;
echo "export AndroidDev=\"$AndroidDev\";" >> $ScriptDir/android_set_target.rc;
echo "export AndroidForce=\"$AndroidForce\";" >> $ScriptDir/android_set_target.rc;
echo "export AndroidGitHub=\"$AndroidGitHub\";" >> $ScriptDir/android_set_target.rc;
echo "export AndroidSync=\"$AndroidSync\";" >> $ScriptDir/android_set_target.rc;
echo "";
echo "";
