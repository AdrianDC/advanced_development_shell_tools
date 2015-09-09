#!/bin/bash
ScriptDir=$PWD;
MainDir=$ScriptDir/..;
TimeStart=$(date +%s);
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

rm -f $MainDir/Paths/AICP;
ln -fsv $MainDir/AICP/ $MainDir/Paths/AICP;

rm -f $MainDir/Paths/Android;
ln -fsv $MainDir/Android/ $MainDir/Paths/Android;

rm -f $MainDir/Paths/CCache;
ln -fsv $MainDir/CCache/ $MainDir/Paths/CCache;

rm -f $MainDir/Paths/GitHub;
ln -fsv $MainDir/GitHub/ $MainDir/Paths/GitHub;

rm -f $MainDir/Paths/Scripts;
ln -fsv $MainDir/Scripts/ $MainDir/Paths/Scripts;

rm -f $MainDir/Paths/Target;
ln -fsv /home/adriandc/Bureau/ $MainDir/Paths/Target;

rm -f $MainDir/Paths/Output;
ln -fsv $MainDir/Android/out/target/product/huashan/ $MainDir/Paths/Output;

for ProjectPath in ${ProjectPaths[*]}
do

  LinkFile=${ProjectPath##*/};
  rm -f $MainDir/Paths/$LinkFile;
  ln -fsv $MainDir/Android/$ProjectPath/ $MainDir/Paths/$LinkFile;

done;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

