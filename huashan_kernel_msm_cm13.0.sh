#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

# Configuration
BootPath="$ScriptDir/..";
BootFile="boot.img";
KernelBuilder="$ScriptDir/android_kernel_builders/cm-13.0";
KernelFolder="/media/adriandc/AndroidDev/CM-13.0/kernel/sony/msm8960t";
KernelModules="$KernelFolder/arch/arm/oprofile";
zImageBuilt="$KernelFolder/arch/arm/boot/zImage";
zImageFile=$KernelBuilder/zImage;
export BOARD_KERNEL_BASE=0x80208000;
export BOARD_KERNEL_RAMDISK=0x81900000;
export BOARD_KERNEL_RPM=0x00020000;
export ARCH=arm;
export SUBARCH=arm;
export CROSS_COMPILE="$AndroidDir/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-";
#export CROSS_COMPILE="$AndroidDir/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-";
export KBUILD_BUILD_USER="AdrianDC";
export KBUILD_BUILD_HOST="KernelBuild";
ModulesPaths=( \
              "arch/arm/mach-msm/dma_test.ko" \
              "arch/arm/mach-msm/msm-buspm-dev.ko" \
              "arch/arm/mach-msm/reset_modem.ko" \
              "arch/arm/oprofile/oprofile.ko" \
              "block/test-iosched.ko" \
              "crypto/ansi_cprng.ko" \
              "drivers/char/adsprpc.ko" \
              "drivers/coresight/control_trace.ko" \
              "drivers/crypto/msm/qce40.ko" \
              "drivers/crypto/msm/qcedev.ko" \
              "drivers/crypto/msm/qcrypto.ko" \
              "drivers/gud/mcdrvmodule.ko" \
              "drivers/gud/mckernelapi.ko" \
              "drivers/hid/hid-logitech-dj.ko" \
              "drivers/media/radio/radio-iris-transport.ko" \
              "drivers/media/video/gspca/gspca_main.ko" \
              "drivers/misc/eeprom/eeprom_93cx6.ko" \
              "drivers/mmc/card/mmc_test.ko" \
              "drivers/net/ethernet/micrel/ks8851.ko" \
              "drivers/scsi/scsi_wait_scan.ko" \
              "drivers/spi/spidev.ko" \
              "drivers/staging/prima/wlan.ko" \
              "drivers/video/backlight/lcd.ko" \
              );
ModulesPath="system/lib/modules";

# Delete the target files
if [ -f $zImageFile ]; then rm -f $zImageFile; fi;
if [ -f $BootPath/$BootFile ]; then rm -f $BootPath/$BootFile; fi;
if [ -f $TargetDir/$BootFile ]; then rm -f $TargetDir/$BootFile; fi;

# Make the kernel zImage
echo "";
echo " [ Making the kernel zImage ]";
echo "";
sudo echo "";
cd $KernelFolder/;
if [[ "$1" =~ "clean" ]]; then
  sudo make mrproper clean;
fi;
if [[ ! "$1" =~ "test" ]]; then
  make cm_viskan_huashan_defconfig;
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
fi;

# Make the kernel boot.img
echo "";
echo " [ Make the kernel boot.img ]";
echo "";
cd $KernelBuilder/;
if [ -f ./boot.elf ]; then rm ./boot.elf; fi;
if [ -f ./boot.img ]; then rm ./boot.img; fi;
python ./mkelf.py -o $BootPath/$BootFile zImage@$BOARD_KERNEL_BASE ramdisk.img@$BOARD_KERNEL_RAMDISK,ramdisk RPM.bin@$BOARD_KERNEL_RPM,rpm cmdline.txt@cmdline
echo "  \"sudo fastboot flash boot ../$BootFile; sudo fastboot reboot\"";
echo "";

# Final target
if [ ! -z "$TargetDir" ]; then
  cp $BootPath/$BootFile $TargetDir/$BootFile;
fi;

# End of build
TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs - Press Enter to continue... ]";
echo "";
read key;

# Flash the kernel
kernelPush=0;
kernelPushed=0;
while [ $kernelPushed != 1 ];
do
  echo "";
  echo " [ Upload new modules - Recovery USB ]";
  echo "";
  kernelPush=1;
  sudo $ScriptDir/android_root_adb.sh;
  OutDir=$AndroidDir/out/target/product/$PhoneName;
  adb wait-for-device;
  for ModulePath in ${ModulesPaths[*]}
  do
    if [ -f "$ModulePath" ]; then continue; fi;
    adb push "$KernelFolder/$ModulePath" "/$ModulesPath/";
    if [ $? == 0 ]; then kernelPush=1; fi;
  done;

  if [ $kernelPush == 1 ]; then
    echo "";
    echo " [ Flashing new kernel - Bootloader USB ]";
    echo "";
    sudo adb reboot bootloader;
    sudo fastboot flash boot $BootPath/$BootFile;
    sudo fastboot reboot;
    kernelPushed=1;
  fi;

  echo "";
  echo " [ Done - Ctrl+C to exit ]";
  echo "";
  read key;
done;

