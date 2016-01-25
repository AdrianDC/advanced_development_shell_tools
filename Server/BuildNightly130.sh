#!/bin/bash
source /media/adriandc/AndroidDev/Server/Vars.rc;
BuildLog="$ScriptsLog.Nightly.log";

# Launch Mode
BuildMode="manual";
if [ ! -z "$1" ]; then
  BuildMode="$@";
fi;

# Compilation Script
cd $ScriptsDir;
source ./android_choose_rom.sh 5 n n 2>&1 | tee $BuildLog;
source ./android_auto_nightly.sh "automatic" "$BuildMode" 2>&1 | tee -a "$BuildLog";

# Update repo state
if [[ "$BuildMode" =~ "automatic" ]]; then
  source ./android_repo_state.sh "automatic";
fi;

# Update script logs
source $ServerDir/LogsSync.sh;

# PushBullet Notification
BuildSuccess=$(grep -a "make completed successfully" $BuildLog | uniq);
if [ ! -z "$BuildSuccess" ]; then
  PushBulletComment="Nightly ROM ready !";
else
  PushBulletComment="Nightly ROM failed.";
fi;
notify-send "$PushBulletComment";
curl --header "Access-Token: $PushBulletToken" \
     --header "Content-Type: application/json" \
     --data-binary "{\"body\":\"$PushBulletComment\",\"title\":\"\",\"type\":\"note\",\"url\":\"$PushBulletNoteUrl\",\"created\":\"$(date +%s)\", \"active\":\"true\",\"sender_name\":\"$PushBulletUser\"}" \
     --request POST https://api.pushbullet.com/v2/pushes >/dev/null;

# CronTab End
if [ -z "$1" ]; then
  read key;
fi;
