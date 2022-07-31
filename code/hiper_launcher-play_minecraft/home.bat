@echo off

if not exist C:\Set_HiPer_Windows_Firewall_to_pass_successfully.txt call %appdata%\hiper_launcher-play_minecraft\Giving_HiPer_Windows_Firewall_Pass-Through.bat
goto add_ok

:add_ok
title Hiper Launcher - Play Minecraft

goto home

:home
cls

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo --------------------欢迎使用 Hiper Launcher - Play Minecraft v1.5.2-----------------------
echo.=         凭证可在 https://mcer.cn/shop 中购买，可加入QQ群：93365639，寻求帮助           =
echo.-------------------------------------此版本更新内容---------------------------------------
echo.=                          1.调整提示排版布局 2.修改、添加提示                           =
echo.--------------------------------------↓↓选项↓↓----------------------------------------
echo.=                                                                                        =
echo.=                            输入→a←可查看本程序关于页面                               =
echo.=               输入→0←即运行 Hiper 30 分钟体验版本(质量取决于网络状况)                =
echo.=  →直接回车←或输入→1←即运行 Hiper 凭证版本(推荐，可以满足大部分网络状况复杂的情况)  =
echo.=                                                                                        =
echo.------------------------------------------------------------------------------------------
set /p mm=请输入选项回车：
if “%mm%”==“0” start experience.bat

if “%mm%”==“i” call installTab.bat
if “%mm%”==“I” call installTab.bat

if “%mm%”==“u” call update.bat
if “%mm%”==“U” call update.bat

if “%mm%”==“a” call about.bat
if “%mm%”==“A” call about.bat

if “%mm%”==“” start token.bat
if “%mm%”==“1” start token.bat

goto home
