#!/bin/bash
timestart=$(date +%s);
username="user";
password="password";
proxyurl="proxy.domain";
proxyport="8080";

# =====================================================================================
git config --global --unset https.proxy;
git config --global --unset http.proxy;
git config --global https.proxy https://$username:$password@$proxyurl:$proxyport;
git config --global http.proxy http://$username:$password@$proxyurl:$proxyport;
git config --get https.proxy;
git config --get http.proxy;

# =====================================================================================
timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

