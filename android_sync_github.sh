#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
ProjectPaths=${ForceProjects[*]};

for ProjectPath in ${ProjectPaths[*]}
do

  echo "";
  echo "";
  echo " [ Downloading $ProjectPath ]";
  echo "";

  cd $AndroidDir/$ProjectPath;
  git rebase --abort;
  git stash -u;
  git fetch github $AndroidTag;
  git fetch AdrianDC $AndroidTag;
  git reset AdrianDC/$AndroidTag;
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

