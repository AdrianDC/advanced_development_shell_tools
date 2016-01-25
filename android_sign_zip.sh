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
BackupFile="$ZipFile.original.zip";
NewSigFile="$ZipFile.signed.zip";

if [ -f "$BackupFile" ]; then
  rm -f "$BackupFile";
fi;
if [ -f "$NewSigFile" ]; then
  rm -f "$NewSigFile";
fi;

echo "";
echo " [ Signing the flashable zip ]";
echo "";

SignApkDir=$ScriptDir/android_signapk;
java -jar $SignApkDir/signapk-cm121.jar -w $SignApkDir/testkey.x509.pem $SignApkDir/testkey.pk8 $ZipFile $NewSigFile;

if [ -f "$NewSigFile" ]; then

  mv "$ZipFile" "$BackupFile";
  mv "$NewSigFile" "$ZipFile";

  echo "";
  echo "  $(basename $ZipFile) created.";
  echo "";

fi;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;
