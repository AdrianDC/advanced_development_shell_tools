#!/bin/bash
ScriptDir=$PWD;
source $ScriptDir/android_set_user.rc;

git config --global user.name $GitUserName;
git config --global user.email $GitEMail;
git config --global credential.helper store;

echo "Press Enter";
read key;

