#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

# Configuration
FilePath="$ScriptDir/..";
FileName="boot.img";
KernelBuilder="$ScriptDir/android_kernel_builder_5.1.1";
KernelRepository="https://github.com/AdrianDC/android_kernel_sony_msm8x60.git";
KernelBranch="cm-12.1";
KernelFolder="$GitHubDir/android_kernel_sony_msm8x60";
zImageBuilt="$KernelFolder/arch/arm/boot/zImage";
zImageFile=$KernelBuilder/zImage;
export BOARD_KERNEL_BASE=0x80208000;
export BOARD_KERNEL_RAMDISK=0x81900000;
export BOARD_KERNEL_RPM=0x00020000;
export ARCH=arm;
export SUBARCH=arm;
export CROSS_COMPILE="$AndroidDir/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-";
export KBUILD_BUILD_USER="AdrianDC";
export KBUILD_BUILD_HOST="KernelBuild";

# Delete the target files
if [ -f $zImageFile ]; then rm -f $zImageFile; fi;
if [ -f $FilePath/$FileName ]; then rm -f $FilePath/$FileName; fi;
if [ -f $TargetDir/$FileName ]; then rm -f $TargetDir/$FileName; fi;

# Update the sources
echo "";
echo " [ Updating the sources ]";
echo "";
if [ -d $KernelFolder ]; then
  cd $KernelFolder/;
  git remote rm origin >/dev/null >/dev/null 2>&1;
  git remote add origin $KernelRepository;
  git fetch origin $KernelBranch;
  git reset --hard FETCH_HEAD;
else
  cd $GitHubDir/;
  git clone $KernelRepository;
  cd $KernelFolder/;
fi;

# Make the kernel zImage
echo "";
echo " [ Making the kernel zImage ]";
echo "";
#make mrproper clean;
make cm_viskan_huashan_defconfig;
make -j8;
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
  cp $FilePath/$FileName $Target/$FileName;
fi;

# End of build
TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

# Flash the kernel
while [ 1 ]
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

