@echo off

::���ñ���
title Update...
echo -------------------------------------------------------------------------------
echo.                                                                                
echo  ���ڼ�������£�������ҪһЩʱ��...
echo.                                                                                
echo -------------------------------------------------------------------------------

goto checkupdata

:noupdatalink
cls
set /a n+=1

color 4f
echo -------------------------------------------------------------------------------
echo.                                                                                  
echo  δ������ԭ���ĵ��ļ������������ڳ������ӱ��÷�����...
echo  ��ǰ���Դ�����%n%��(50�ηⶥ)
echo.                                                                      
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
echo.                                                                                                                       
echo  �޷����ӱ����ļ��������������޷������Զ����£����ֶ��滻����https://gitee.com/bleaker/hiper-launcher/releases/1.0/                                              echo.                                                                                                                       
echo -------------------------------------------------------------------------------
pause
exit

:checkupdata
set /P v=<%appdata%\hiper_launcher-play_minecraft\v.txt

if ��%v%��==��1.5.2�� goto donotupdata

goto update

:update  
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P C:\Windows\Temp -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update.bat

if not exist C:\Windows\Temp\update.bat goto noupdatalink
goto sater

:sater
cls

if not exist C:\Windows\Temp\update.bat call C:\Windows\Temp\update2.bat 
call C:\Windows\Temp\update.bat 

:donotupdata

call %appdata%\hiper_launcher-play_minecraft\home.bat










