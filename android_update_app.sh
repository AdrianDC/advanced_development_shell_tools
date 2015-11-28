#!/bin/bash

echo "";
echo " [ Application to launch ]";
echo "";
printf "    Package name : ";
if [ -z "$1" ]; then
  read -e package;
else
  package="$1";
  echo "$package";
fi;

if [ ! -z "$package" ]; then

  echo "";
  echo "";
  echo " [ Launching '$package' ]";
  echo "";
  echo "    Optimizing...";
  adb shell pm force-dex-opt $package;
  echo "    Killing...";
  adb shell pkill $package;
  echo "";

fi;

echo "";
echo " [ Done ]";
echo "";
if [ -z "$1" ]; then
  read key;
fi;
echo "";
