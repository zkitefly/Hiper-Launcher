::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0D6YI+unv4Pi7g10NcOMrebPp1bWDKe4U1k3tZZM/6XZbjcUPBB5KMwKnbxYLpGdMs2eXNsGI0w==
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
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIYIQtRXkSuPX60Bb0Z+qi2r9qLo1RdeesxfYzJ27KaQA==
::eg0/rx1wNQPfEVWB+kM9LVsJDAyLLG6oObkd/eb45++V710RVfsAdYbV37ecIeYHig==
::fBEirQZwNQPfEVWB+kM9LVsJDAyLLG6oObkd/eb45++V710RVfsAdYbV37ecIeYHig==
::cRolqwZ3JBvQF1fEqQK21NfQl/cH5pg/7mOYNRR8IQoBWr6argawpGNfB2sJ1Cg741XhZx7MIvymQuYFAh5bbBOteojOTeuVc+Fg4Kc=
::dhA7uBVwLU+EWGOP/VY1LhdNLA==
::YQ03rBFzNR3SWATEzkk5PB5SQB3i
::dhAmsQZ3MwfNWATEzkk5PB5SQB3i
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkCCI608+jRlvcH3JQz72GYMg675/6Tsl5HG604cZvTz7bAI+8epRywIcV0hikDzIQEBQtdbBO7fm8=
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4XcZ/eyPSiIfUd6U3hZ9ZglkpWmdJMIRJWexG5bwkg52taswQ=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

::���ñ���
title Hiper Launcher - Play Minecraft

::���ô��ڴ�С
mode con cols=70 lines=14

echo. ���ڼ���ļ�����...

::����ļ�����
%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft\token -S -N -t 0 -o download.log  https://gitcode.net/chearlai/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft\token -S -N -t 0 -o download1.log https://gitcode.net/chearlai/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft\experience -S -N -t 0 -o download2.log https://gitcode.net/chearlai/hiper/-/raw/master/hiper-windows-i386.exe

cls
goto home

:home
cls
color
echo. ��ӭʹ�� Hiper Launcher - Play Minecraft v1.0
echo ������ƾ֤������ 0 �س������� 30 ��������棩:
set /p ID=
if ��%id%��==��0�� goto experience
if ��%id%��==��about�� goto about
if ��%id%��==��i�� goto installTab
set %id%

:: ����������������������������������������

:token
cls
mode con cols=100 lines=20

color B
echo. 
echo. -----------Minecraft �����̳�-----------
echo. ��������
echo. ���� Hiper ������־���ҵ� CORE ipv4[ �� ] ֮���IP����6.0.0.1��Ȼ��������Ϸ���Ծ��������ţ�
echo. �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.0.0.1:25565 ,�����˷��͸����뷽
echo. ���뷽��
echo. ���� Hiper ��������Ϸ�����롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴�ɣ�
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
echo. ����������� Hiper ...
pause>nul

call color

echo. ������ Hiper ������־��

cd %appdata%\hiper_launcher-play_minecraft\token

hpr.exe -t %id%

color cb

echo. ��⣬Hiper �������˳����븴��������־������QQȺ��93365639 �����з�����
pause
goto home

:: ����������������������������������������

:experience
cls
if not exist C:\Windows\System32\drivers\tap0901.sys goto installTab
mode con cols=100 lines=20
color
echo. ���������Ѱ�װ

color B
echo. 
echo. -----------Minecraft �����̳�-----------
echo. ��������
echo. ���� Hiper ������־���ҵ� "cidr":" �� /7" ֮���IP����6.11.210.233��Ȼ��������Ϸ���Ծ��������ţ�
echo. �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.11.210.233:25565 ,�����˷��͸����뷽
echo. ���뷽��
echo. ���� Hiper ��������Ϸ�����롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴�ɣ�
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
echo. ����������� Hiper ...
pause>nul


echo ������ Hiper ������־��

cd %appdata%\hiper_launcher-play_minecraft\experience

call hiper-windows-i386.exe v

color cb
echo. ��⣬Hiper�������˳����븴��������־������QQȺ��93365639 �����з�����
pause
goto home

::����������������������������������������

:installTab
cls
mode con cols=100 lines=20
color
echo. 
echo. ��⵽δ��װ Hiper ������������������ڰ�װ����
echo.
echo. �����ǰ�װ������־��

cd %appdata%\hiper_launcher-play_minecraft\experience\windows-tap

call FIRST_RUN_THIS_SCRIPT.bat

color 2f
echo. ��װ�������˳�����װ�ɹ���
echo. �����������...
timeout /T 3
goto experience

::����������������������������������������

:about
echo. ���ֿ��������׵ģ�ʹ��Hiper����Minecraft�Ĺ���
echo. 
echo. ���ֿ����� https://github.com/944390394/hiperapp
pause
goto home