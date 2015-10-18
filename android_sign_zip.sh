#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

echo "";
echo " [ Drag & Drop the zip file ]";
echo "";

printf " > ";
read -e ZipFile;
ZipFile=${ZipFile//[\' ]/};
TargetFile="$ZipFile.signed.zip";

if [ -f "$TargetFile" ]; then
  rm -f $TargetFile;
fi;

echo "";
echo " [ Signing the flashable zip ]";
echo "";

SignApkDir=$ScriptDir/android_signapk;
java -jar $SignApkDir/signapk-cm121.jar -w $SignApkDir/testkey.x509.pem $SignApkDir/testkey.pk8 $ZipFile $TargetFile;

echo "";
echo "  $(basename $TargetFile) created.";
echo "";
TimeDiff=$(($(date +%s)-$TimeStart));

echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;
