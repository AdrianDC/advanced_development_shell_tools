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
AndroidROMChoice=0;
while [ -z $AndroidROMChoice ] || [ $AndroidROMChoice -lt 1 ] || [ $AndroidROMChoice -gt $AndroidROMCount ];
do

  echo "";
  printf " > ROM to build (1 to $AndroidROMCount) : ";
  read AndroidROMChoice;

done;

AndroidROM=${AndroidROMs[$((AndroidROMChoice-1))]};
echo "export AndroidROM=\"$AndroidROM\";" > $ScriptDir/android_set_target.rc;
exit;
