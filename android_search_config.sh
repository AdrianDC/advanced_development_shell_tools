#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

cd $AndroidDir/;
pattern=":D";

while [[ $pattern != "" ]];
do

  clear;
  echo "";
  echo " [ Pattern to search for ]";
  echo "";
  printf "  Config constant to search for : ";
  read pattern;

  if [[ $pattern != "" ]]; then

    echo "";
    echo "";
    echo " [ Searching for '$pattern' ]";
    echo "";
    TimeStart=$(date +%s);
    grep --include=\*.mk -lrw ./ -e "$pattern"
    # n : show found line numbers / w : entire words / l : files matching / r : recursive
    TimeDiff=$(($(date +%s)-$TimeStart));

    echo "";
    echo "";
    echo " [ Done in $TimeDiff secs ]";
    echo "";
    read key;

  fi;

done;

echo "";
echo "";
echo " [ Done ]";
echo "";
read key;

