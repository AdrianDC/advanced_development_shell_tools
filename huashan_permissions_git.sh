#!/bin/bash
timestart=$(date +%s);

# =====================================================================================
cd /media/Android/;
username=$(whoami);
usergroup=$(groups $username);
sudo chown -cR $username:$usergroup /media/GitHub/

# =====================================================================================
timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

