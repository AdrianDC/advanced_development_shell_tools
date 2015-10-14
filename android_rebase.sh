#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
ProjectPaths=${UpdateProjects[*]};

for ProjectPath in ${ProjectPaths[*]}
do

  echo "";
  echo "";
  echo " [ Rebasing $ProjectPath ]";
  echo "";

  cd $AndroidDir/$ProjectPath;
  git fetch origin $AndroidTag;
  git rebase origin/$AndroidTag;
  git rebase --abort > /dev/null;
  git push -f $GitUserName HEAD:$AndroidTag;

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

