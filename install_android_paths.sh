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
              "device/qcom/common" \
              "device/sony/huashan" \
              "hardware/sony/DASH" \
              "kernel/sony/msm8x60" \
              "kernel/sony/msm8960t" \
              "vendor/sony" \
              );

echo "";
echo "";
echo " [ Updating scripts to executables ]";
echo "";

chmod -v +x $ScriptDir/*.sh;

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

    cd $MainDir/$AndroidROM/$ProjectPath/;
    if [ -z "$(git remote -v | grep origin$'\t')" ]; then
       GitHubRemote=$(git remote -v | grep github -m 1 | cut -d$'\t' -f 2 | cut -d' ' -f 1);
       if [[ $(printf $GitHubRemote | cut -d/ -f 4) == "$GitUserName" ]]; then
         git remote add origin "$(printf $GitHubRemote | cut -d/ -f 1-3)/$AndroidROM/$(printf $GitHubRemote | cut -d/ -f 5)";
       else
         git remote add origin "$GitHubRemote";
       fi;
    fi;
    if [ -z "$(git remote -v | grep $GitUserName$'\t')" ]; then
       GitHubRemote=$(git remote -v | grep github -m 1 | cut -d$'\t' -f 2 | cut -d' ' -f 1);
       git remote add $GitUserName "$(printf $GitHubRemote | cut -d/ -f 1-3)/$GitUserName/$(printf $GitHubRemote | cut -d/ -f 5)";
    fi;

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

cd $ScriptDir/;
git update-index --assume-unchanged android_set_variables.rc;
git update-index --assume-unchanged android_set_target.rc;
git update-index --assume-unchanged android_set_user.rc;
git update-index --assume-unchanged android_make_test.sh;

TimeDiff=$(($(date +%s)-$TimeStart));
echo "";
echo "";
echo " [ Done in $TimeDiff secs ]";
echo "";
read key;

