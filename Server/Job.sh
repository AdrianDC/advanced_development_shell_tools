#!/usr/bin/env bash
source /media/adriandc/AndroidDev/Server/Vars.rc;

# Register Terminal
echo $PPID >$ScriptTerminal;

# JobsNames
jobs=(huashancm121 huashancm130 huashanadds huashanaicp lxanzu130 lxdevs130 lxtest130);

# Launch Build
case $1 in
     ${jobs[0]}) $ServerDir/HuashanCM121.sh "huashan" "automatic" >$ScriptsJob 2>&1;;
     ${jobs[1]}) $ServerDir/HuashanCM130.sh "huashan" "automatic" >$ScriptsJob 2>&1;;
     ${jobs[2]}) $ServerDir/HuashanAddons.sh "huashan" "automatic" >$ScriptsJob 2>&1;;
     ${jobs[3]}) $ServerDir/HuashanAICP.sh "huashan" "automatic" >$ScriptsJob 2>&1;;
     ${jobs[4]}) $ServerDir/LegacyXperia130.sh "anzu" "automatic" >$ScriptsJob 2>&1;;
     ${jobs[5]}) $ServerDir/LegacyXperia130.sh "legacyxperia" "synconly" >$ScriptsJob 2>&1;&
     ${jobs[6]}) for device in anzu coconut haida hallon iyokan mango phoenix satsuma smultron urushi zeus; do
                    $ServerDir/LegacyXperia130.sh $device "automatic nosync rmoutdevice" >>$ScriptsJob 2>&1;
                  done;;
     *) echo " No Job selected [${jobs[*]}]";
        echo " No Job selected [${jobs[*]}]" >$ScriptsJob 2>&1;;
esac;

# Scheduled Job (crontab -e)
#
# sudo apt-get update && sudo apt-get install gnome-schedule
#
# 30 06 * * * /media/adriandc/AndroidDev/Server/Job.sh 1
# 30 05 * * * /media/adriandc/AndroidDev/Server/Reboot.sh
