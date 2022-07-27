@echo off

::设置标题
title Hiper Launcher - Play Minecraft

::设置窗口大小
mode con cols=70 lines=14

del /f /s /q C:\Windows\Temp\update.bat

goto home

:home-0
cls
goto home

:home

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo. 欢迎使用 Hiper Launcher - Play Minecraft v1.4
echo. 输入 a 回车可查看本程序关于页面
echo. 凭证可在 https://mcer.cn/shop 中购买，可加入QQ群：93365639，寻求帮助
echo. 
echo. 输入 0 回车即运行 Hiper 30 分钟体验版本
echo. 直接回车即运行 Hiper 凭证版本
echo.
set /p mm=请输入 Hiper 启动模式：
if “%mm%”==“0” call experience.bat
if “%mm%”==“i” call installTab.bat
if “%mm%”==“I” call installTab.bat
if “%mm%”==“u” call update.bat
if “%mm%”==“U” call update.bat
if “%mm%”==“a” call about.bat
if “%mm%”==“A” call about.bat
if “%mm%”==“” call token.bat

goto home
