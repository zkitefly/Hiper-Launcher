::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0D6YI+unv4Pi7g10NcOMrebPp1bWDKe4U1k3tZZM/6XZbjcUPBB5KMwKnbxYLpGdMs2eXNsGI0w==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN45eZnS2buAbukQ5SU=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIYIQtRXkSuPX60Bb0Z+qi2r9qLo1RdeesxfYzJ27KaQA==
::eg0/rx1wNQPfEVWB+kM9LVsJDAyLLG6oObkd/eb45++V710RVfsAdYbV37ecIeYHig==
::fBEirQZwNQPfEVWB+kM9LVsJDAyLLG6oObkd/eb45++V710RVfsAdYbV37ecIeYHig==
::cRolqwZ3JBvQF1fEqQK21NfQl/cH5pg/7mOYNRR8IQoBWr6argawpGNfB2sJ1Cg741XhZx7MIvymQuYFAh5bbBOteojOTeuVc+Fg4Kc=
::dhA7uBVwLU+EWGOP/VY1LhdNLA==
::YQ03rBFzNR3SWATEzkk5PB5SQB3i
::dhAmsQZ3MwfNWATEzkk5PB5SQB3i
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkCCI608+jRlvcH3JQz72GYMg675/6Tsl5HG604cZvTz7bAI+8epRywIcV0hikDzIQEBQtdbBO7fm8=
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4XcZ/eyPSiIfUd6U3hZ9ZglkpWmdJMIRJWexG5bwkg52taswQ=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

::设置标题
title Hiper Launcher - Play Minecraft

::设置窗口大小
mode con cols=70 lines=14

echo. 正在检查文件更新...

::检查文件更新
%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft\token -S -N -t 0 -o download.log  https://gitcode.net/chearlai/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft\token -S -N -t 0 -o download1.log https://gitcode.net/chearlai/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft\experience -S -N -t 0 -o download2.log https://gitcode.net/chearlai/hiper/-/raw/master/hiper-windows-i386.exe

cls
goto home

:home
cls
color
echo. 欢迎使用 Hiper Launcher - Play Minecraft v1.0
echo 请输入凭证（输入 0 回车即运行 30 分钟体验版）:
set /p ID=
if “%id%”==“0” goto experience
if “%id%”==“about” goto about
if “%id%”==“i” goto installTab
set %id%

:: ————————————————————

:token
cls
mode con cols=100 lines=20

color B
echo. 
echo. -----------Minecraft 联机教程-----------
echo. 创建方：
echo. 运行 Hiper 后，在日志中找到 CORE ipv4[ 和 ] 之间的IP，如6.0.0.1，然后启动游戏，对局域网开放，
echo. 将 IP 和开放的端口组合成 IP:端口，如 6.0.0.1:25565 ,并将此发送给加入方
echo. 加入方：
echo. 运行 Hiper 后，启动游戏，进入“多人游戏”》“直接连接”，输入创建方发的文本加入即可！
echo. 在此处可以查看相关常见问题：https://zkitefly.github.io/hiper-d/222.html
echo. ————————————————————
echo. 按任意键运行 Hiper ...
pause>nul

call color

echo. 以下是 Hiper 运行日志：

cd %appdata%\hiper_launcher-play_minecraft\token

hpr.exe -t %id%

color cb

echo. 糟糕，Hiper 非正常退出，请复制以上日志发送至QQ群：93365639 ，进行反馈。
pause
goto home

:: ————————————————————

:experience
cls
if not exist C:\Windows\System32\drivers\tap0901.sys goto installTab
mode con cols=100 lines=20
color
echo. 虚拟网卡已安装

color B
echo. 
echo. -----------Minecraft 联机教程-----------
echo. 创建方：
echo. 运行 Hiper 后，在日志中找到 "cidr":" 和 /7" 之间的IP，如6.11.210.233，然后启动游戏，对局域网开放，
echo. 将 IP 和开放的端口组合成 IP:端口，如 6.11.210.233:25565 ,并将此发送给加入方
echo. 加入方：
echo. 运行 Hiper 后，启动游戏，进入“多人游戏”》“直接连接”，输入创建方发的文本加入即可！
echo. 在此处可以查看相关常见问题：https://zkitefly.github.io/hiper-d/222.html
echo. ————————————————————
echo. 按任意键运行 Hiper ...
pause>nul


echo 以下是 Hiper 运行日志：

cd %appdata%\hiper_launcher-play_minecraft\experience

call hiper-windows-i386.exe v

color cb
echo. 糟糕，Hiper非正常退出。请复制以上日志发送至QQ群：93365639 ，进行反馈。
pause
goto home

::————————————————————

:installTab
cls
mode con cols=100 lines=20
color
echo. 
echo. 检测到未安装 Hiper 所需的虚拟网卡，正在安装……
echo.
echo. 以下是安装程序日志：

cd %appdata%\hiper_launcher-play_minecraft\experience\windows-tap

call FIRST_RUN_THIS_SCRIPT.bat

color 2f
echo. 安装程序已退出，安装成功！
echo. 按任意键继续...
timeout /T 3
goto experience

::————————————————————

:about
echo. 本仓库制作简易的，使用Hiper联机Minecraft的工具
echo. 
echo. 本仓库借鉴了 https://github.com/944390394/hiperapp
pause
goto home