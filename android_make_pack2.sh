#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePaths=(\
           "system/app/InCallUI/InCallUI.apk" \
           );

PackFile="fix-"$(date +'%Y%m%d')"-$PhoneName.zip";

LaunchBuild=1;

cd $OutDir;
FilesList="";
for FilePath in ${FilePaths[*]}
do
  FilesList="$FilesList ./$FilePath";
done;

echo "";
echo " [ Building the new zip ]";
echo "";

if [ -f "$TargetDir/$PackFile" ]; then
  rm -f "$TargetDir/$PackFile";
fi;

cp "$ScriptDir/android_files/flashable_template.zip" "$TargetDir/$PackFile.unsigned.zip";
zip -g "$TargetDir/$PackFile.unsigned.zip" $FilesList;
SignApkDir=$ScriptDir/android_signapk;
java -jar "$SignApkDir/signapk-cm121.jar" -w "$SignApkDir/testkey.x509.pem" "$SignApkDir/testkey.pk8" "$TargetDir/$PackFile.unsigned.zip" "$TargetDir/$PackFile";
rm -f "$TargetDir/$PackFile.unsigned.zip";

export AndroidResult="$TargetDir/$PackFile";

echo "";
echo "  $PackFile created.";
echo "";
TimeDiff=$(($(date +%s)-$TimeStart));

echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";

if [ -z "$1" ]; then
  read key;
fi;
echo "";
