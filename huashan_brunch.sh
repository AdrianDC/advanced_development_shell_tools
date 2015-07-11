#!/bin/bash
timestart=$(date +%s);
filetarget="/media/sf_Desktop";

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

rm -f $ANDROID_PRODUCT_OUT/cm_huashan-ota-*.zip
rm -f $ANDROID_PRODUCT_OUT/cm-*.zip.md5sum
if [ "$(ls -A $filetarget)" ]; then
  cp $ANDROID_PRODUCT_OUT/cm-12.1-$(date +'%Y%m%d')-UNOFFICIAL-huashan.zip $filetarget/;
fi;

timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
nautilus $ANDROID_PRODUCT_OUT >/dev/null 2>&1;
read key;

