#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
ProjectPaths=("device/qcom/common" \
              "device/sony/$PhoneName" \
              "frameworks/base" \
              "hardware/libhardware" \
              "kernel/sony/msm8x60" \
              "packages/apps/Settings" \
              "vendor/sony" \
              );

for ProjectPath in ${ProjectPaths[*]}
do

  echo "";
  echo "";
  echo " [ Downloading $ProjectPath ]";
  echo "";

  cd $AndroidDir/$ProjectPath;
  git rebase --abort;
  git checkout cm-12.1;
  git fetch AdrianDC cm-12.1;
  git reset FETCH_HEAD;
  git stash -u;

done;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
if [[ "$1" == "" ]]; then
  read key;
fi;
echo "";

