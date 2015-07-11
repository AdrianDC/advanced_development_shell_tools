#!/bin/bash
timestart=$(date +%s);
currentdir=$PWD;

# Configuration
kernelfolder="/media/GitHub/android_kernel_google_huashan";

# Kernel folder
cd $kernelfolder/;

# Clean path
echo "";
echo " [ Cleaning the kernel ]";
echo "";
make mrproper clean;

# End of clean
timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

