@echo off

::设置标题
title Update...
echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         正在检查程序更新，可能需要一些时间...                                       =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update.bat

if not exist C:\Windows\Temp\update.bat goto nolink
goto sater

:nolink
cls
set /a n+=1

color 4f
echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo  =                                        未能连接到文件服务器，正在尝试重新连接...                                    =
echo  =                                             当前重试次数→%n%←(100次封顶)                                          =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update.bat
if %n% GEQ 100 goto nofile
goto nolink

:nofile
cls

color 4f
echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo  =                                                  未能连接文件服务器                                                 =
echo  =                                   请检查设备网络环境或联系作者(起风了吗 zkitefly）                                  =
echo  =                                                  加入QQ群：93365639                                                 =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------
pause
exit

:sater
cls

call C:\Windows\Temp\update.bat 