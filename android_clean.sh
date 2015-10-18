#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;

echo "";
echo " [ Loading the sources ]";
echo "";
source ./build/envsetup.sh;
croot;
echo "";

echo "";
echo " [ Cleaning the branch ]";
echo "";
make clean;
echo "";

echo "";
echo " [ Done ]";
echo "";
read key;
