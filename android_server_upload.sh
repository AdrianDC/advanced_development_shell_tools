#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

echo "";
echo " [ Uploading to the server ]";
echo "";
if [[ $1 != "" ]] && [ -f $1 ]; then
  curl -i -T $1 -u $FTPUserName:$FTPPassword ftp://$FTPServer/
fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
if [[ "$2" == "" ]]; then
  read key;
fi;
echo "";

