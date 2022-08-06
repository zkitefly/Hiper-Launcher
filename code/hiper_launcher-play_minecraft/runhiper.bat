@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
echo. OK
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
pause
goto hiper2

:hiper2
cls
echo. ↓以下为 Hiper 运行时的日志↓
cd %appdata%\hiper_launcher-play_minecraft\hiper

call hiper.exe

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
pause
goto hiper2