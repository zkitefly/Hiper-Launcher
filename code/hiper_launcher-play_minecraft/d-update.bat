@echo off

::���ñ���
title Update...
echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         ���ڼ�������£�������ҪһЩʱ��...                                       =
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
echo  =                                        δ�����ӵ��ļ������������ڳ�����������...                                    =
echo  =                                             ��ǰ���Դ�����%n%��(100�ηⶥ)                                          =
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
echo  =                                                  δ�������ļ�������                                                 =
echo  =                                   �����豸���绷������ϵ����(������� zkitefly��                                  =
echo  =                                                  ����QQȺ��93365639                                                 =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------
pause
exit

:sater
cls

call C:\Windows\Temp\update.bat 