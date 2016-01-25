#!/bin/bash
ScriptDir=$PWD;
ScriptsDir=$ScriptDir;
FullTimeStart=$(date +%s);
BuildMode="$2";
source $ScriptsDir/android_set_variables.rc;
source $ScriptsDir/Bash/bash_android.rc;

if [[ ! "$BuildMode" =~ "test" ]]; then

  cd $AndroidDir/;
  repo forall -c 'echo "Cleaning project ${REPO_PROJECT}"; \
                  git rebase --abort >/dev/null 2>&1; \
                  git stash -u >/dev/null 2>&1; \
                  git reset --hard HEAD >/dev/null 2>&1;';
  repob sync;

fi;

if [[ ! "$BuildMode" =~ "test" || "$BuildMode" =~ "wipe" ]] && [ -d "$OutDir/system" ]; then
  echo " [ System - Wiping /system output ]";
  rm -rf "$OutDir/system";
  echo "";
  echo "Output folder '/system' deleted";
  echo "";
fi;

cd $ScriptsDir/;
source $ScriptsDir/android_brunch.sh "automatic";

if [[ ! "$BuildMode" =~ "local" ]]; then
  cd $ScriptsDir/;
  if [[ ! "$BuildMode" =~ "dev" ]]; then
    source $ScriptsDir/android_server_upload.sh "$AndroidResult" "CM-12.1-Addons" "automatic";
  else
    source $ScriptsDir/android_server_upload.sh "$AndroidResult" "Android-Developers" "automatic";
  fi;
fi;

FullTimeDiff=$(($(date +%s)-$FullTimeStart));
echo "";
if [ -f "$AndroidResult" ]; then
  echo " [ Build : Success in $FullTimeDiff secs ]";
else
  echo " [ Build : Fail in $FullTimeDiff secs ]";
fi;
echo "";

if [ -z "$2" ]; then
  read key;
fi;
