::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0D6YI+unv4Pi7hkgOX/YwaLPY1bCLHOga+kD2Sposw3RZkM4eQQtUfwuUYwY6rG1Qt2KRVw==
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
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIYIQtRXkSuPX60Bb0Z+qi2r9qLo1RdeesxfYzJ27KaQA==
::eg0/rx1wNQPfEVWB+kM9LVsJDAyLLG6oObkd/eb45++V710RVfsAdYbV37ecIeYHig==
::fBEirQZwNQPfEVWB+kM9LVsJDAyLLG6oObkd/eb45++V710RVfsAdYbV37ecIeYHig==
::cRolqwZ3JBvQF1fEqQIYIQtRXkSuPX60Bb0Z+qi2r9qLo1RdeesxfYzJ27KaQA==
::dhA7uBVwLU+EWGOP/VY1LhdNLA==
::YQ03rBFzNR3SWATEzkk5PB5SQB3i
::dhAmsQZ3MwfNWATEzkk5PB5SQB3i
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkCCI634PDRlusG5LE9yFWaEBt8FQ4IfqGZiT24jEfz06SLMmjyHsMYr7sk2H9ZisoKGJyimpd8q4rRfu2iVOJ5+0BUWIo7pc1pGcLZz+GuYSPYmD8rc4kn1cQKxyir/gP8kKhfiCyrDfBeRjq1jqRhKMwS/BqkCA==
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN48d4ve5ryHMOUB1UnlYJgu3n9I1dsADQJncxulawwmqGhW+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

::设置标题
title Update...

::设置窗口大小
mode con cols=70 lines=15

echo. 正在检查程序更新，可能需要一些时间...

::检查文件更新
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -P C:\Windows\Temp -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update.bat

if not exist C:\Windows\Temp\update.bat goto nolink
goto sater

:nolink
cls
set /a n+=1

color 4f

echo  未能连接到文件服务器，正在尝试重新连接 
echo      当前重试次数→%n%←(100次封顶)       
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -P C:\Windows\Temp -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update.bat
if %n% GEQ 100 goto nofile
goto nolink

:nofile
cls

color 4f

echo             未能连接文件服务器
echo   请检查网络环境或联系作者(起风了吗 zkitefly）
echo             加入QQ群：93365639
pause
exit


:sater
cls

call C:\Windows\Temp\update.bat 





