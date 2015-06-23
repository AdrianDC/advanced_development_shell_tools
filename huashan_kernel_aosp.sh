#!/bin/bash
timestart=$(date +%s);
currentdir=$PWD;

# Configuration
filepath=$currentdir;
filename="boot.img";
filetarget="/media/sf_Desktop";
androidpath="/media/adriandc/UbuntuWork/Projects/Android";
kernelbuilder="$currentdir/android_kernel_huashan_builder";
kernelrepository="https://github.com/AdrianDC/android_aosp_kernel_huashan.git";
kernelbranch="huashan";
kernelfolder="$currentdir/../GitHub/android_aosp_kernel_huashan";
zimagebuilt="$kernelfolder/arch/arm/boot/zImage";
zimagefile=$kernelbuilder/zImage
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE="$androidpath/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-"
export KBUILD_BUILD_USER="AdrianDC"
export KBUILD_BUILD_HOST="KernelBuild"

# Kernel folder
cd $kernelfolder/;

# Delete the target files
if [ -f $zimagefile ]; then rm -f $zimagefile; fi;
if [ -f $filetarget/$filename ]; then rm -f $filetarget/$filename; fi;

# Update the sources
echo "";
echo " [ Updating the sources ]";
echo "";
git remote rm origin >/dev/null >/dev/null 2>&1;
git remote add origin $kernelrepository;
git pull -f origin $kernelbranch;

# Make the kernel zImage
echo "";
echo " [ Making the kernel zImage ]";
echo "";
#make mrproper clean;
make cm_viskan_huashan_defconfig;
make -j8;
if ! [ -a $zimagebuilt ]; then
  echo "";
  echo "  Kernel Compilation failed.";
  echo "";
  read key;
  exit 1;
else
  cp $zimagebuilt $zimagefile;
fi;

# Make the kernel boot.img
echo "";
echo " [ Make the kernel boot.img ]";
echo "";
cd $kernelbuilder/;
if [ -f ./boot.elf ]; then rm ./boot.elf; fi;
if [ -f ./boot.img ]; then rm ./boot.img; fi;
python ./mkelf.py -o boot.elf zImage@0x80208000 ramdisk.img@0x81900000,ramdisk RPM.bin@0x00020000,rpm cmdline.txt@0x00000000,cmdline;
mv ./boot.elf $filepath/$filename;
echo "  \"fastboot flash boot $filename & fastboot reboot\"";
echo "";

# Final target
if [ -z "$filetarget" ]; then
  cp ./kernel/boot-new.img /media/sf_Desktop/$filename;
fi;

# End of build
timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

