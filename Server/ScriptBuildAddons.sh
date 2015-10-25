#!/bin/bash
source /media/adriandc/AndroidDev/Server/ScriptVars.rc;
BuildLog="$ScriptsLog.CMAddons.log";

# Launch Mode
BuildMode="automatic";
if [ -z "$1" ]; then
  BuildMode="manual";
elif [[ "$1" == "test" ]]; then
  BuildMode="test";
fi;

# Compilation Script
cd $ScriptsDir;
source ./android_choose_rom.sh 1 y y 2>&1 | tee $BuildLog;
source ./android_auto_addons.sh "automatic" $BuildMode 2>&1 | tee -a $BuildLog;

# Update script logs
source $ServerDir/ScriptLogsSync.sh;

# PushBullet Notification
BuildSuccess=$(grep "Build : Success" $BuildLog | uniq);
if [ ! -z "$BuildSuccess" ]; then
  PushBulletComment="CM12.1 Addons ready !";
else
  PushBulletComment="CM12.1 Addons failed.";
fi;
curl --header "Access-Token: $PushBulletToken" \
     --header "Content-Type: application/json" \
     --data-binary "{\"body\":\"$PushBulletComment\",\"title\":\"\",\"type\":\"note\",\"url\":\"$PushBulletNoteUrl\",\"created\":\"$(date +%s)\", \"active\":\"true\",\"sender_name\":\"$PushBulletUser\"}" \
     --request POST https://api.pushbullet.com/v2/pushes >/dev/null;

# CronTab End
if [[ "$1" == "" ]]; then
  read key;
fi;
