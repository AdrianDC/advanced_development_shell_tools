#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
TargetFile="test-cm-12.1-"$(date +'%Y%m%d')".zip";

if [ -f $TargetDir/$TargetFile ]; then
  rm -f $TargetDir/$TargetFile;
fi;

echo "";
echo " [ Building the flashable zip ]";
echo "";

cd $TargetDir/;
cp $ScriptDir/android_files/flashable_template.zip ./$TargetFile.unsigned.zip;
zip -g -r $TargetDir/$TargetFile.unsigned.zip ./system;
SignApkDir=$ScriptDir/android_signapk;
java -jar $SignApkDir/signapk-cm121.jar -w $SignApkDir/testkey.x509.pem $SignApkDir/testkey.pk8 ./$TargetFile.unsigned.zip ./$TargetFile;
rm -f ./$TargetFile.unsigned.zip;

echo "";
echo "  $TargetFile created.";
echo "";
TimeDiff=$(($(date +%s)-$TimeStart));

echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

