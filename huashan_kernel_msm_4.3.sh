#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

# Configuration
FilePath="$ScriptDir/..";
FileName="boot.img";
KernelBuilder="$ScriptDir/android_kernel_builder_4.3";
KernelFolder="$GitHubDir/android_kernel_sony_msm8960t";
zImageBuilt="$KernelFolder/arch/arm/boot/zImage";
zImageFile=$KernelBuilder/zImage;
export BOARD_KERNEL_BASE=0x80208000;
export BOARD_KERNEL_RAMDISK=0x81900000;
export BOARD_KERNEL_RPM=0x00020000;
export ARCH=arm;
export SUBARCH=arm;
export CROSS_COMPILE="$GitHubDir/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-";
export KBUILD_BUILD_USER="AdrianDC";
export KBUILD_BUILD_HOST="KernelBuild";

# Delete the target files
if [ -f $zImageFile ]; then rm -f $zImageFile; fi;
if [ -f $FilePath/$FileName ]; then rm -f $FilePath/$FileName; fi;
if [ -f $TargetDir/$FileName ]; then rm -f $TargetDir/$FileName; fi;

# Make the kernel zImage
cd $KernelFolder/;
echo "";
echo " [ Making the kernel zImage ]";
echo "";
#make mrproper clean;
make viskan_huashan_defconfig;
make -j $BuildJobs;
if ! [ -a $zImageBuilt ]; then
  echo "";
  echo "  Kernel Compilation failed.";
  echo "";
  read key;
  exit 1;
else
  cp $zImageBuilt $zImageFile;
fi;

# Make the kernel boot.img
echo "";
echo " [ Make the kernel boot.img ]";
echo "";
cd $KernelBuilder/;
if [ -f ./boot.elf ]; then rm ./boot.elf; fi;
if [ -f ./boot.img ]; then rm ./boot.img; fi;
python ./mkelf.py -o $FilePath/$FileName zImage@$BOARD_KERNEL_BASE ramdisk.img@$BOARD_KERNEL_RAMDISK,ramdisk RPM.bin@$BOARD_KERNEL_RPM,rpm cmdline.txt@cmdline
echo "  \"fastboot flash boot $FileName & fastboot reboot\"";
echo "";

# Final target
if [ ! -z "$TargetDir" ]; then
  cp $FilePath/$FileName $TargetDir/$FileName;
fi;

# End of build
TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

# Flash the kernel
while [ 1 ];
do
  echo "";
  echo " [ Upload new kernel - Bootloader USB ]";
  echo "";
  sudo fastboot flash boot $FilePath/$FileName;
  sudo fastboot reboot;

  echo "";
  echo " [ Done ]";
  echo "";
  read key;
done;

