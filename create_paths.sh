#!/bin/bash
ScriptDir=$PWD;
MainDir=$ScriptDir/..;
TimeStart=$(date +%s);
source $ScriptDir/android_set_variables.rc;

FolderPaths=("CCache" \
             "GitHub" \
             "Scripts" \
             "Scripts" \
             );
ProjectPaths=("frameworks/base" \
              "packages/apps/Settings" \
              "hardware/libhardware" \
              "device/sony/huashan" \
              "hardware/sony/DASH" \
              "kernel/sony/msm8x60" \
              "vendor/sony" \
              );

echo "";
echo "";
echo " [ Linking paths ]";
echo "";

if [ ! -d $MainDir/Paths ]; then
  mkdir $MainDir/Paths;
fi;

rm -f $ScriptDir/Paths;
ln -dfsv $MainDir/Paths/ $ScriptDir/Paths;

for FolderPath in ${FolderPaths[*]}
do

  rm -f $MainDir/Paths/$FolderPath;
  ln -fsv $MainDir/$FolderPath/ $MainDir/Paths/$FolderPath;

done;

for AndroidROM in ${AndroidROMs[*]}
do

  if [ ! -d $MainDir/Paths/$AndroidROM ]; then
    mkdir $MainDir/Paths/$AndroidROM;
  fi;

  rm -f $MainDir/Paths/$AndroidROM/Repo;
  ln -fsv $MainDir/$AndroidROM $MainDir/Paths/$AndroidROM/Repo;

  for ProjectPath in ${ProjectPaths[*]}
  do

    LinkFile=${ProjectPath##*/};
    rm -f $MainDir/Paths/$AndroidROM/$LinkFile;
    ln -fsv $MainDir/$AndroidROM/$ProjectPath/ $MainDir/Paths/$AndroidROM/$LinkFile;

  done;

  rm -f $MainDir/Paths/$AndroidROM/ManifestROM.xml;
  ln -fsv $MainDir/$AndroidROM/.repo/manifest.xml $MainDir/Paths/$AndroidROM/ManifestROM.xml;

  rm -f $MainDir/Paths/$AndroidROM/ManifestLocal.xml;
  ln -fsv $MainDir/$AndroidROM/.repo/local_manifests/*.xml $MainDir/Paths/$AndroidROM/ManifestLocal.xml;

  rm -f $MainDir/Paths/$AndroidROM/Output;
  ln -fsv $MainDir/$AndroidROM/out/target/product/huashan/ $MainDir/Paths/$AndroidROM/Output;

done;

rm -f $MainDir/Paths/Target;
ln -fsv $(xdg-user-dir DESKTOP) $MainDir/Paths/Target;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

