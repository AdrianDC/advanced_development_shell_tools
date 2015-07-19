#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
UserName="user";
password="password";
proxyurl="proxy.domain";
proxyport="8080";

# =====================================================================================
git config --global --unset https.proxy;
git config --global --unset http.proxy;
git config --global https.proxy https://$UserName:$password@$proxyurl:$proxyport;
git config --global http.proxy http://$UserName:$password@$proxyurl:$proxyport;
git config --get https.proxy;
git config --get http.proxy;

# =====================================================================================
TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

