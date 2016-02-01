#!/usr/bin/env bash
source /media/adriandc/AndroidDev/Server/Vars.rc;

# Listen Scheduled Build
echo "";
echo " [ Scheduled Builds Logs ]";
echo "";

# Registered Terminal
TerminalPID="";
if [ -f $ScriptTerminal ]; then
  read TerminalPID < $ScriptTerminal;
fi;
if [ ! -z $TerminalPID ] && stat /proc/$TerminalPID/fd/0 &>/dev/null; then
  tail -f $ScriptsJob;

# Unregistered Watcher
else
  cat ScriptsJob;
fi;

# Script End
if [[ "$1" == "" ]]; then
  read key;
fi;
