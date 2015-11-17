#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
export StateFile="/media/adriandc/AndroidDev/Logs/Repo.State.log";

cd $AndroidDir/;

echo "";
echo " [ Logging  ]";
echo "";
echo "" >$StateFile;
repo forall -c 'gitbranch=${REPO_RREV##*/}; \
                echo "\n\n${REPO_PROJECT} [${REPO_REMOTE} - ${gitbranch}]\n" | tee -a ${StateFile}; \
                git log --pretty=oneline -10 | tee -a ${StateFile};';
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
