#!/bin/bash
timestart=$(date +%s);

# =====================================================================================
username=$(whoami);
sudo chown -cR $username:$username ./GitHub/

# =====================================================================================
timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

