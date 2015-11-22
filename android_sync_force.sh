#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Force-syncing repositories ]";
echo "";
repo forall -c 'echo "Cleaning project ${REPO_PROJECT}"; \
                git rebase --abort >/dev/null 2>&1; \
                git stash -u >/dev/null 2>&1;';
repo sync --current-branch --detach --force-broken --force-sync;
echo "";

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
