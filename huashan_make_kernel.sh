#!/bin/bash
timestart=$(date +%s);
filepath="";
filename="boot.img";

if [ -f /media/sf_Desktop/$filename ]; then rm /media/sf_Desktop/$filename; fi;
if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd /media/Android/;

echo "";
echo " [ Making the requested libraries ]";
echo "";
source ./build/envsetup.sh;
croot;
breakfast huashan;
cd /media/Android/;
mka -j8 bootimage;

timediff=$(($(date +%s)-$timestart));
cp /media/Android/out/target/product/huashan/$filepath$filename /media/sf_Desktop/$filename;
echo "";
echo "  \"fastboot flash boot $filename & fastboot reboot\"";

while [ 1 ]
do
  echo "";
  echo " [ Upload new kernel - Bootloader USB ]";
  echo "";
  echo "";
  cd /media/Android/out/target/product/huashan/;
  sudo fastboot flash boot $filename;
  sudo fastboot reboot;

  echo "";
  echo " [ Done in $timediff secs ]";
  echo "";
  read key;
done;

