@echo off

::���ñ���
title Update...
echo -------------------------------------------------------------------------------
echo.                                                                                
echo  ���ڼ�������£�������ҪһЩʱ��...
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
echo  δ������ԭ���ĵ��ļ������������ڳ������ӱ��÷�����...
echo  ��ǰ���Դ�����%n%��(50�ηⶥ)
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
echo  �޷����ӱ����ļ��������������޷������Զ����£�
echo. ���ֶ��滻����https://gitee.com/bleaker/hiper-launcher/releases/1.0/ 
echo.                                                                                                                       
echo -------------------------------------------------------------------------------
pause
exit

:checkupdata
set /P v=<%temp%\v.txt

if ��%v%��==��1.5.2�� goto donotupdata
goto updata

:update  
%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/update2.bat

if not exist %appdata%\hiper_launcher-play_minecraft\update2.bat goto noupdatalink
goto sater

:sater
call %appdata%\hiper_launcher-play_minecraft\update2.bat

:donotupdata

call %appdata%\hiper_launcher-play_minecraft\home.bat










