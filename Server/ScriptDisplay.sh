#!/usr/bin/env bash
source /media/adriandc/AndroidDev/Server/ScriptVars.rc;

# Listen Scheduled Build
echo "";
echo " [ Scheduled Builds Logs ]";
echo "";

# Registered Terminal
TerminalPID="";
if [ -f $ScriptTerminal ]; then
  read TerminalPID <$ScriptTerminal;
fi;
if [ ! -z $TerminalPID ] && stat /proc/$TerminalPID/fd/0 &>/dev/null; then
  tail -f $ScriptsLog;

# Unregistered Watcher
else
  cat $ScriptsLog;
fi;

# Script End
if [[ "$1" == "" ]]; then
  read key;
fi;

