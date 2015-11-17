#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Force-syncing repositories ]";
echo "";
repo forall -c 'gitbranch=${REPO_RREV##*/}; \
                echo ${PWD} [${REPO_REMOTE} - ${gitbranch}]; \
                git rebase --abort 2>/dev/null; \
                git stash -u; \
                git reset --hard HEAD; \
                echo "";';
repo sync --force-sync --force-broken;
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
