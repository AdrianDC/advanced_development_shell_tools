echo off
cls

if "%1"=="true" goto Code
start "Android ADB Root System" cmd.exe /K "%0" true
goto End

:Code
echo.
echo  [ Mount as Root ]
echo.
adb root
ping 1.1.1.1 -n 1 -w 1000 > nul
adb remount
adb devices
echo.
echo  [ User Input ]
echo.

:End
exit
