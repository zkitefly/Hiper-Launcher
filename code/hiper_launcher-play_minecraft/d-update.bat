@echo off

::设置标题
title Update...
echo -------------------------------------------------------------------------------
echo.                                                                                
echo  正在检查程序更新，可能需要一些时间...
echo.                                                                                
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/v.txt
goto checkupdata

:noupdatalink
cls
set /a n+=1

color 4f
echo -------------------------------------------------------------------------------
echo.                                                                                  
echo  未能连接原来的到文件服务器，正在尝试连接备用服务器...
echo  当前重试次数→%n%←(50次封顶)
echo.                                                                      
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/update2.bat

if not exist %appdata%\hiper_launcher-play_minecraft\update2.bat goto xh
goto sater

:xh
if %n% GEQ 50 goto nofile
goto noupdatalink

:nofile
cls

color 4f
echo -------------------------------------------------------------------------------
echo.                                                                                                                       
echo  无法连接备用文件服务器，所以无法连接自动更新，
echo. 请手动替换程序：https://gitee.com/bleaker/hiper-launcher/releases/1.0/ 
echo.                                                                                                                       
echo -------------------------------------------------------------------------------
pause
exit

:checkupdata
set /P v=<%temp%\v.txt

if “%v%”==“1.5.2” goto donotupdata
goto updata

:update  
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update2.bat

if not exist %appdata%\hiper_launcher-play_minecraft\update2.bat goto noupdatalink
goto sater

:sater
call %appdata%\hiper_launcher-play_minecraft\update2.bat

:donotupdata

call %appdata%\hiper_launcher-play_minecraft\home.bat










