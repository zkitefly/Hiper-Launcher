@echo off

if not exist C:\Giving_HiPer_Windows_Firewall_Pass-Through.txt call %appdata%\hiper_launcher-play_minecraft\Giving_HiPer_Windows_Firewall_Pass-Through.bat
goto add_ok

:add_ok
title Hiper Launcher - Play Minecraft
mode con cols=90 lines=20
goto home

:home
cls

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo. 欢迎使用 Hiper Launcher - Play Minecraft v1.5
echo. 输入 a 回车可查看本程序关于页面
echo. 凭证可在 https://mcer.cn/shop 中购买，可加入QQ群：93365639，寻求帮助
echo. 
echo. 输入 0 回车即运行 Hiper 30 分钟体验版本（质量取决于网络状况）
echo. 直接回车 或 输入 1 回车 即运行 Hiper 凭证版本（推荐，可以满足大部分网络状况复杂的情况）
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
if “%mm%”==“1” call token.bat

goto home
