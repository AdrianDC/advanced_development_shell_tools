#!/usr/bin/env bash
source /media/adriandc/AndroidDev/Server/ScriptVars.rc;

# Register Terminal
echo $PPID >$ScriptTerminal;

# Launch Build
case $1 in
     1) $ScriptBuildAddons "automatic" >$ScriptsJob 2>&1;;
     2) $ScriptBuildCM121 "automatic" >$ScriptsJob 2>&1;;
     3) $ScriptBuildAICP "automatic" >$ScriptsJob 2>&1;;
     4) $ScriptBuildCM130 "automatic" >$ScriptsJob 2>&1;;
     5) $ScriptBuildAOSP "automatic" >$ScriptsJob 2>&1;;
     *) echo "No Jobs selected" >$ScriptsJob 2>&1;;
esac;

# Scheduled Job (crontab -e)
#
# sudo apt-get update && sudo apt-get install gnome-schedule
#
# 30 08 * * * /media/spips/AndroidWork/Server/ScriptJob.sh 1

