#!/bin/bash
source /media/adriandc/AndroidDev/Server/Vars.rc;

# Listen Scheduled Build
echo "";
echo " [ Syncing build logs ]";
echo "";

cd $LogsDir/;
git add . -Av;
git commit -s -m "Android: Build "$(date +'%Y%m%d-%H%M');
git push -f;

echo "";
echo "";

