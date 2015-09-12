#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

echo "";
echo " [ Checking Swap File ]";
echo "";
SwapFile=$(readlink -f $SwapFile);
if [ ! -f $SwapFile ]; then
  sudo dd if=/dev/zero of=$SwapFile bs=1024 count=$SwapSize;
  sudo chown root:root $SwapFile;
  sudo chmod 0600 $SwapFile;
  sudo mkswap $SwapFile;
fi;
echo "  > Ready";

echo "";
echo "";
if [ -z "$(swapon -s | grep $SwapFile)" ]; then

  echo " [ Enabling Swap File ]";
  echo "";
  sudo swapon $SwapFile;

else

  echo " [ Disabling Swap File ]";
  echo "";
  sudo swapoff $SwapFile;

fi;
sudo swapon -s;
echo "";


TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

