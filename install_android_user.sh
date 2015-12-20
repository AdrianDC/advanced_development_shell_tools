#!/bin/bash
ScriptDir=$PWD;
source $ScriptDir/android_set_variables.rc;

git config --global user.name $GitUserName;
git config --global user.email $GitEMail;
git config --global credential.helper store;
git config --global review.review.cyanogenmod.org.username $GitUserName;
git config --global mergetool.keepBackup false;

echo "";
echo "ssh-keygen -t rsa -C $GitEMail;";
echo 'eval `ssh-agent -s`';
echo 'ssh-add ~/.ssh/id_rsa';
echo 'ssh-add';

echo "";
echo "Press Enter to finish...";
read key;
