::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN47fZzQzrueHOMc7kDYfZ8902hllMoZAhhQewDmfgM1sFFPv2qANNWdtRvdWF2H7kIgHnc6gnvV7A==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

goto run

:run
title Hiper 启动窗口
cls
echo. Hiper 即将启动...
echo.
echo. 你可以不必看此处，请勿关闭！最小化窗口即可！
echo. 
echo. -------------------------------------------------------------------------------
echo.                                      
echo.                          请返回教程窗口！并查看下一步！
echo. 
echo. -------------------------------------------------------------------------------
echo. 
timeout /T 5

goto hiper

:hiper

echo. 以下为 Hiper 运行时的日志
cd %appdata%\hiper_launcher-play_minecraft\hiper

call hiper.exe

goto hiper2

:hiper2
cls
set /a n+=1
echo.
echo. 抱歉 Hiper 非正常退出，正在重新启动...
echo.
echo. ↓以下为 Hiper 运行时的日志↓
cd %appdata%\hiper_launcher-play_minecraft\hiper

call hiper.exe

goto hiperx

:hiperx
if %n% GEQ 5 goto xx
goto hiper2

:xx
echo. -------------------------------------------------------------------------------
echo.                               
echo.         Hiper 非正常退出，请带上 Hiper 日志并加入 QQ 群询问：93365639
echo. 非正常退出的原因有：
echo. 1.凭证证书超过了有效期→代表你需要重新获得凭证证书
echo.   若日志中出现 hiper certificate for this host is expired 相关字样
echo.   代表你需要重新获得凭证证书
echo. ......
echo. 
echo. -------------------------------------------------------------------------------
echo.

