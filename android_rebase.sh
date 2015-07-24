#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
ProjectPaths=("frameworks/base" \
              "packages/apps/Settings" \
              "hardware/libhardware" \
              "device/sony/$PhoneName" \
              "device/sony/msm8960-common" \
              "hardware/sony/DASH" \
              "kernel/sony/msm8x60" \
              "vendor/sony" \
              );

for ProjectPath in ${ProjectPaths[*]}
do

  echo "";
  echo " [ Starting the rebase sequence ]";
  echo "";
  echo "";

  cd $AndroidDir/$ProjectPath;
  git rebase HEAD~5 -i;
  git fetch CyanogenMod cm-12.1;
  git reset --hard FETCH_HEAD;
  git rebase --continue;
  git push -f AdrianDC cm-12.1;

done;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

