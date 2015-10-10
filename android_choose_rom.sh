#!/bin/bash
ScriptDir=$PWD;
source $ScriptDir/android_set_variables.rc;

echo "";
echo " [ Choose a ROM target ]";
echo "";
echo "";

AndroidROMCount=0;
for AndroidROMName in ${AndroidROMs[*]}
do

  AndroidROMCount=$((AndroidROMCount+1));
  printf "  $AndroidROMCount : $AndroidROMName";
  if [ $AndroidROMName = $AndroidROM ]; then printf " (*)"; fi;
  echo "";

done;

echo "";
AndroidROMChoice=$1;
if [ -z $AndroidROMChoice ]; then
  while [ -z $AndroidROMChoice ] || [ $AndroidROMChoice -lt 1 ] || [ $AndroidROMChoice -gt $AndroidROMCount ];
  do

    echo "";
    printf " > ROM to build (1 to $AndroidROMCount) : ";
    read AndroidROMChoice;

  done;
else
  echo "";
  echo " > ROM to build (1 to $AndroidROMCount) : $AndroidROMChoice";
fi;

echo "";
printf " > Automatically rebase the ROM (y/N) : $2";
if [ -z $2 ]; then
  read AndroidDevChoice;
else
  AndroidDevChoice=$2;
fi;

AndroidROM=${AndroidROMs[$((AndroidROMChoice-1))]};

AndroidDev="";
if [[ $AndroidDevChoice == "y" || $AndroidDevChoice == "Y" ]]; then
  AndroidDev="true";
fi;

echo "export AndroidROM=\"$AndroidROM\";" > $ScriptDir/android_set_target.rc;
echo "export AndroidDev=\"$AndroidDev\";" >> $ScriptDir/android_set_target.rc;
echo "";
echo "";
