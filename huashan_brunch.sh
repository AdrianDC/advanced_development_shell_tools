#!/bin/bash
timestart=$(date +%s);

if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd /media/Android/;

echo "";
echo " [ Loading the sources ]";
echo "";
source ./build/envsetup.sh;
croot;
echo "";

echo "";
echo " [ Building the branch ]";
echo "";
if [ -f ./out/target/product/huashan/system/build.prop ]; then rm -f ./out/target/product/huashan/system/build.prop; fi;
brunch huashan;
echo "";

timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
read key;

