#!/bin/bash
source /media/adriandc/AndroidDev/Server/ScriptVars.rc;
BuildLog="$ScriptsLog.AOSP.log";

# Launch Mode
BuildMode="automatic";
if [ -z "$1" ]; then
  BuildMode="manual";
elif [[ "$1" == "test" ]]; then
  BuildMode="test";
fi;

# Compilation Script
cd $ScriptsDir;
source ./android_choose_rom.sh 4 n n 2>&1 | tee $BuildLog;
source ./android_auto_aosp.sh "automatic" $BuildMode 2>&1 | tee -a $BuildLog;

# Update script logs
source $ServerDir/ScriptLogsSync.sh;

# PushBullet Notification
BuildSuccess=$(grep "Build : Success" $BuildLog | uniq);
if [ ! -z "$BuildSuccess" ]; then
  PushBulletComment="AOSP ROM ready !";
else
  PushBulletComment="AOSP ROM failed.";
fi;
curl --header "Access-Token: $PushBulletToken" \
     --header "Content-Type: application/json" \
     --data-binary "{\"body\":\"$PushBulletComment\",\"title\":\"\",\"type\":\"note\",\"url\":\"$PushBulletNoteUrl\",\"created\":\"$(date +%s)\", \"active\":\"true\",\"sender_name\":\"$PushBulletUser\"}" \
     --request POST https://api.pushbullet.com/v2/pushes >/dev/null;

# CronTab End
if [[ "$1" == "" ]]; then
  read key;
fi;
