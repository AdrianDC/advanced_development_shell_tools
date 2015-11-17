#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Rebase-syncing repositories ]";
echo "";
repo forall -c 'gitbranch=${REPO_RREV##*/}; \
                echo ${PWD} [${REPO_REMOTE}/${gitbranch}]; \
                git rebase --abort 2>/dev/null; \
                git fetch ${REPO_REMOTE} $gitbranch; \
                git rebase FETCH_HEAD; \
                git rebase --abort 2>/dev/null; \
                echo "";';

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
