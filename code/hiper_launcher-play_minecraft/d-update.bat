@echo off

set /P v=<%appdata%\hiper_launcher-play_minecraft\v.txt

::���ñ���
title Update...
echo -------------------------------------------------------------------------------
echo                                                                                
echo  ���ڼ�������£�������ҪһЩʱ��...
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
echo  δ������ԭ���ĵ��ļ������������ڳ������ӱ��÷�����...
echo  ��ǰ���Դ�����%n%��(50�ηⶥ)
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
echo  δ������ԭ���ĵ��ļ������������ڳ������ӱ��÷�����...
echo  ��ǰ���Դ�����%n%��(50�ηⶥ)
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
echo  �޷����ӱ����ļ��������������޷������Զ����£����ֶ����°汾                                                 
echo  �����豸���绷������ϵ����(������� zkitefly��                                  
echo  ����QQȺ��93365639                                                  
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












