@echo off
color 0a

mode con: lines=40 cols=47

title ROOTME

echo [=============================================]
echo [                   ROOTME                    ]
echo [                   Magisk                    ]
echo [=============================================]
echo.
echo Please make sure you device is connected
echo and it is in twrp ADB sideload...
echo.
if exist platform-tools (
echo ::ADB platform-tools detected
)
if exist .\platform-tools\magisk.zip (
echo ::Magisk.zip detected
)

if not exist platform-tools (
color 04
echo ::No ADB platform-tools detected--
echo ::Auto closing...          
goto end
)
if not exist .\platform-tools\magisk.zip (
color 04
echo ::No magisk.zip detected--
echo ::Auto closing...          
goto end
)
echo.
ping localhost -n 10 >nul
echo ::Rooting...
echo.
echo ADB---
echo.
cd platform-tools
adb sideload magisk.zip >nul
echo.
echo ---ADB
echo.
echo ::Rooted
echo ::Auto closing...

:end
ping localhost -n 6 >nul 
exit