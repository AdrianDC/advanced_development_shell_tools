#!/bin/bash

echo "";
echo " [ Mounting as root ]";
echo "";
echo "";

adb root;
adb wait-for-devices;
adb remount;
adb devices;

