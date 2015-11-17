#!/bin/bash
ScriptDir=$PWD;
source $ScriptDir/android_set_variables.rc;

meld "$PathsDir/AICP/huashan/" "$PathsDir/CyanogenMod/huashan/";
