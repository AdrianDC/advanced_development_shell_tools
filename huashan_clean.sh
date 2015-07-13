#!/bin/bash

if [ -d "$HOME/bin" ]; then PATH="$HOME/bin:$PATH"; fi;
cd ./Android/;

echo "";
echo " [ Loading the sources ]";
echo "";
source ./build/envsetup.sh;
croot;
echo "";

echo "";
echo " [ Cleaning the branch ]";
echo "";
make clean;
echo "";

echo "";
echo " [ Done ]";
echo "";
read key;

