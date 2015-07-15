#!/bin/bash

echo "";
echo " [ Mounting as root ]";
echo "";
echo "";

adb wait-for-devices;
adb root;
adb wait-for-devices;
adb remount;
adb devices;

echo "";

