#!/bin/bash
ScriptDir=$PWD;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;
FilePaths=( \
            "system/app/Snap/Snap.apk" \
            "system/lib/libjni_snapmosaic.so" \
            "system/lib/libjni_snaptinyplanet.so" \
          );
PackageName="Snap";
PackFile="$PackageName-"$(date +'%Y%m%d')"-$PhoneName.zip";

for FilePath in ${FilePaths[*]}
do
  if [ -f $TargetDir/$FilePath ]; then
    rm $TargetDir/$FilePath;
  fi;
done;

cd $AndroidDir/;
if [ ! -z $1 ]; then
  LaunchBuild=0;
else
  source ./build/envsetup.sh;
  croot;
  breakfast $PhoneName;
  LaunchBuild=1;
fi;

while [ $LaunchBuild != 0 ];
do

  echo "";
  echo " [ Making the requested libraries ]";
  echo "";
  cd $AndroidDir/;
  mka -j $BuildJobs $PackageName | tee $LogFile;
  InstallLog=$(grep -a "Install:.*target/product" $LogFile | sort | uniq);
  echo "$InstallLog";
  echo "";

  if [ -z "$(grep -a "make failed to build" $LogFile | uniq)" ]; then
    LaunchBuild=0;
  else
    LaunchBuild=1;
    printf " Press Enter to restart the build... ";
    read key;
    echo "";
    echo "";
  fi;

done;

echo "";
echo " [ Building the new zip ]";
echo "";

if [ -f "$TargetDir/$PackFile" ]; then
  rm -f "$TargetDir/$PackFile";
fi;

cd $OutDir;
FilesList="";
for FilePath in ${FilePaths[*]}
do
  FilesList="$FilesList ./$FilePath";
done;

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

