#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

for ProjectPath in ${ForceProjects[*]}
do

  echo "";
  echo "";
  echo " [ Downloading $ProjectPath ]";
  echo "";

  cd $AndroidDir/$ProjectPath;
  git rebase --abort;
  git stash -u;
  git fetch $AndroidGitHub $AndroidTag;
  git fetch $GitUserName $AndroidTag;
  git reset $GitUserName/$AndroidTag;
  git stash -u;

done;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
