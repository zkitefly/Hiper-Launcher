@echo off

set /P v=<%appdata%\hiper_launcher-play_minecraft\v.txt

::设置标题
title Update...
echo -------------------------------------------------------------------------------
echo                                                                                
echo  正在检查程序更新，可能需要一些时间...
echo                                                                                
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/v.txt

if not exist C:\Windows\Temp\v.txt goto nolink
goto checkupdata

:nolink
cls
set /a n+=1

echo -------------------------------------------------------------------------------
echo                                                                                  
echo  未能连接原来的到文件服务器，正在尝试连接备用服务器...
echo  当前重试次数→%n%←(50次封顶)
echo                                                                      
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/v.txt

if not exist C:\Windows\Temp\v.txt goto vc
goto checkupdata

:vc
if %n% GEQ 50 goto nofile
goto nolink

:noupdatalink
cls
set /a n+=1

color 4f
echo -------------------------------------------------------------------------------
echo                                                                                  
echo  未能连接原来的到文件服务器，正在尝试连接备用服务器...
echo  当前重试次数→%n%←(50次封顶)
echo                                                                      
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/update2.bat

if not exist C:\Windows\Temp\update2.bat goto xh
goto sater

:xh
if %n% GEQ 50 goto nofile
goto noupdatalink

:nofile
cls

color 4f
echo -------------------------------------------------------------------------------
echo                                                                                                                       
echo  无法连接备用文件服务器，所以无法连接自动更新，请手动更新版本                                                 
echo  请检查设备网络环境或联系作者(起风了吗 zkitefly）                                  
echo  加入QQ群：93365639                                                  
echo                                                                                                                       
echo -------------------------------------------------------------------------------
pause
exit

:checkupdata
set /P v=<C:\Windows\Temp\v.txt

if "%v%"="%cv%" goto staer
goto update

:update  
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/update.bat

if not exist C:\Windows\Temp\update.bat goto noupdatalink
goto sater

:sater
cls

if not exist C:\Windows\Temp\update.bat call C:\Windows\Temp\update2.bat 
call C:\Windows\Temp\update.bat 












