@echo off
cd platform-tools
mode con: lines=20 cols=28
color 0a
title Magisk app loader

echo [==========================]
echo [     Magisk app loader    ]
echo [==========================]
echo.
echo Please ensure your device 
echo is connected, booted in 
echo Android with usb debugging
echo turned ON
ping localhost -n 10 >nul
if exist magisk.apk (
echo ::Magisk.apk detected...
echo ::Installing...
echo.
echo ADB---
echo.
adb install magisk.apk
echo.
echo ---ADB
echo ::Installed
echo ::Auto closing...
ping localhost -n 7 >nul
exit
)
if not exist magisk.apk (
color 04
Echo ::NO MAGISK.APK detected--
echo ::Auto closing...
ping localhost -n 7 >nul
exit
)
exit