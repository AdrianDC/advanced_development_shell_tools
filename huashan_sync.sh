#!/bin/bash
timestart=$(date +%s);

if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd ./Android/;

echo "";
echo " [ Syncing repositories ]";
echo "";
repo sync -j8 -f;
echo "";

timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

