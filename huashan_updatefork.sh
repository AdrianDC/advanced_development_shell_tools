#!/bin/bash
timestart=$(date +%s);

# =====================================================================================
cd ./GitHub/;
huashanbranch="cm-12.1";
origin_dev_huashan="https://github.com/Mrcl1450/android_device_sony_huashan.git";
origin_dev_msm8960="https://github.com/Mrcl1450/android_device_sony_msm8960-common.git";
origin_kernel_msm8x60="https://github.com/Mrcl1450/android_kernel_sony_msm8x60.git";
origin_vendor_sony="https://github.com/Mrcl1450/proprietary_vendor_sony.git";
origin_dash_sony="https://github.com/Mrcl1450/android_hardware_sony_DASH.git";
upstream_dev_huashan="https://github.com/AdrianDC/android_device_sony_huashan.git";
upstream_dev_msm8960="https://github.com/AdrianDC/android_device_sony_msm8960-common.git";
upstream_kernel_msm8x60="https://github.com/AdrianDC/android_kernel_sony_msm8x60.git";
upstream_vendor_sony="https://github.com/AdrianDC/proprietary_vendor_sony.git";
upstream_dash_sony="https://github.com/AdrianDC/android_hardware_sony_DASH.git";

# =====================================================================================
echo "";
echo " [ Cloning the remote repositories ]";
echo "";
printf " - Download android_device_sony_huashan (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  if [ -d ./android_device_sony_huashan ]; then
    cd ./android_device_sony_huashan/;
    git remote rm origin >/dev/null >/dev/null 2>&1;
    git remote add origin $origin_dev_huashan;
    git fetch origin $huashanbranch;
    git reset FETCH_HEAD --hard;
    cd ../;
  else
    git clone $origin_dev_huashan;
  fi;
fi;
echo "";
printf " - Download android_device_sony_msm8960-common (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  if [ -d ./android_device_sony_msm8960-common ]; then
    cd ./android_device_sony_msm8960-common/;
    git remote rm origin >/dev/null >/dev/null 2>&1;
    git remote add origin $origin_dev_msm8960;
    git fetch origin $huashanbranch;
    git reset FETCH_HEAD --hard;
    cd ../;
  else
    git clone $origin_dev_msm8960;
  fi;
fi;
echo "";
printf " - Download android_kernel_sony_msm8x60 (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  if [ -d ./android_kernel_sony_msm8x60 ]; then
    cd ./android_kernel_sony_msm8x60/;
    git remote rm origin >/dev/null >/dev/null 2>&1;
    git remote add origin $origin_kernel_msm8x60;
    git fetch origin $huashanbranch;
    git reset FETCH_HEAD --hard;
    cd ../;
  else
    git clone $origin_kernel_msm8x60;
  fi;
fi;
echo "";
printf " - Download proprietary_vendor_sony (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  if [ -d ./proprietary_vendor_sony ]; then
    cd ./proprietary_vendor_sony/;
    git remote rm origin >/dev/null >/dev/null 2>&1;
    git remote add origin $origin_vendor_sony;
    git fetch origin $huashanbranch;
    git reset FETCH_HEAD --hard;
    cd ../;
  else
    git clone $origin_vendor_sony;
  fi;
fi;
echo "";
printf " - Download android_hardware_sony_DASH (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  if [ -d ./android_hardware_sony_DASH ]; then
    cd ./android_hardware_sony_DASH/;
    git remote rm origin >/dev/null >/dev/null 2>&1;
    git remote add origin $origin_dash_sony;
    git pull -f origin $huashanbranch;
    cd ../;
  else
    git clone $origin_dash_sony;
  fi;
fi;
echo "";

# =====================================================================================
echo "";
echo " [ Sending the updated fork ]";
echo "";
printf " - Update android_device_sony_huashan (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  echo "";
  cd ./android_device_sony_huashan/;
  git remote rm upstream >/dev/null >/dev/null 2>&1;
  git remote add upstream $upstream_dev_huashan;
  git push -f upstream $huashanbranch;
  cd ../;
fi;
echo "";
printf " - Update android_device_sony_msm8960-common (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  echo "";
  cd ./android_device_sony_msm8960-common/;
  git remote rm upstream >/dev/null >/dev/null 2>&1;
  git remote add upstream $upstream_dev_msm8960;
  git push -f upstream $huashanbranch;
  cd ../;
fi;
echo "";
printf " - Update android_kernel_sony_msm8x60 (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  echo "";
  cd ./android_kernel_sony_msm8x60/;
  git remote rm upstream >/dev/null >/dev/null 2>&1;
  git remote add upstream $upstream_kernel_msm8x60;
  git push -f upstream $huashanbranch;
  cd ../;
fi;
echo "";
printf " - Update proprietary_vendor_sony (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  echo "";
  cd ./proprietary_vendor_sony/;
  git remote rm upstream >/dev/null >/dev/null 2>&1;
  git remote add upstream $upstream_vendor_sony;
  git push -f upstream $huashanbranch;
  cd ../;
fi;
echo "";
printf " - Update android_hardware_sony_DASH (y/n) ? ";
read key;
if [ "$key" == "y" ]; then
  echo "";
  cd ./android_hardware_sony_DASH/;
  git remote rm upstream >/dev/null >/dev/null 2>&1;
  git remote add upstream $upstream_dash_sony;
  git push -f upstream $huashanbranch;
  cd ../;
fi;
echo "";

# =====================================================================================
timediff=$(($(date +%s)-$timestart));
echo "";
echo " [ Done in $timediff secs ]";
echo "";
read key;

