@echo off

if not exist C:\Set_Hiper_Windows_Firewall_to_pass_successfully.txt call %appdata%\hiper_launcher-play_minecraft\Giving_HiPer_Windows_Firewall_Pass-Through.bat
goto add_ok

:add_ok
title Hiper Launcher - Play Minecraft

goto home

:home
cls

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo.--------------------欢迎使用 Hiper Launcher - Play Minecraft v1.6-------------------------
echo.
echo.          凭证可在 https://mcer.cn/shop 中购买，可加入QQ群：93365639，寻求帮助           
echo.
echo.-------------------------------------此版本更新内容---------------------------------------
echo.             1.隐藏Hiper_plus渠道（为凭证渠道）2.更新、适配Hiper，有好的体验                
echo.--------------------------------------↓↓选项↓↓----------------------------------------
echo.
echo.                             输入→a←可查看本程序关于页面                               
echo.                                                                                         
echo.******************************   输入→ 0 ←即运行 Hiper   *******************************
::echo.        或输入→1←即运行 Hiper 凭证版本(推荐，可以满足大部分网络状况复杂的情况)       
echo.                                                                                         
echo.------------------------------------------------------------------------------------------
echo.
set /p mm=请输入选项回车：
if “%mm%”==“0” call hiper.bat

if “%mm%”==“u” call update.bat
if “%mm%”==“U” call update.bat

if “%mm%”==“a” call about.bat
if “%mm%”==“A” call about.bat

if “%mm%”==“1” call hiper_plus.bat

if “%mm%”==“fhq” call Giving_HiPer_Windows_Firewall_Pass-Through.bat

goto home
