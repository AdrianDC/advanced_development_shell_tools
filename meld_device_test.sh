#!/bin/bash
ScriptDir=$PWD;
source $ScriptDir/android_set_variables.rc;

meld "$PathsDir/Temp/huashan/" "$PathsDir/CyanogenMod/huashan/";

