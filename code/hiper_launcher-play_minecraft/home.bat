@echo off

::���ñ���
title Hiper Launcher - Play Minecraft

::���ô��ڴ�С
mode con cols=70 lines=14

cls
goto home

:home
cls

color 8f

echo. ��ӭʹ�� Hiper Launcher - Play Minecraft v1.1
echo. ���� a �ɲ鿴���������ҳ��
echo. ƾ֤���� https://mcer.cn/shop �й��򣬿ɼ���QQȺ��93365639��Ѱ�����
echo. ������ƾ֤������ 0 �س������� 30 ��������棩:
set /p ID=
if ��%id%��==��0�� goto experience
if ��%id%��==��a�� goto about
if ��%id%��==��A�� goto about
if ��%id%��==��i�� goto installTab
set %id%

:: ����������������������������������������

:token
@echo off
cls
mode con cols=100 lines=30

color 8b

echo. 
echo. -----------Minecraft �����̳�-----------
echo. ��������
echo. ���� Hiper ������־���ҵ� CORE ipv4[ �� ] ֮���IP����6.0.0.1��Ȼ��������Ϸ���Ծ��������ţ�
echo. �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.0.0.1:25565 ,�����˷��͸����뷽��
echo. ���뷽��
echo. ���� Hiper ��������Ϸ�����롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴�ɣ�
echo. 
echo. ע�⣬ע�⣬������ƾ֤��ʽ����ͨ�ģ�����ʱ������ͬ�� Hiper �汾���������ͼ��뷽ƾ֤�費��ͬ��
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
echo. ����������� Hiper ...
pause>nul

color 2f

echo. ������ Hiper ������־��

cd %appdata%\hiper_launcher-play_minecraft\token

@echo on
hpr.exe -t %id%
@echo off

color cb

echo. ��⣬Hiper �������˳����븴��������־������QQȺ��93365639 �����з�����
echo. ���������������...
pause>nil
goto token

:: ����������������������������������������

:experience
@echo off
cls
if not exist C:\Windows\System32\drivers\tap0901.sys goto installTab
mode con cols=100 lines=30
echo. ���������Ѱ�װ

color 8b

echo. 
echo. -----------Minecraft �����̳�-----------
echo. ��������
echo. ���� Hiper ������־���ҵ� "cidr":" �� /7" ֮���IP����6.11.210.233��Ȼ��������Ϸ���Ծ��������ţ�
echo. �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.11.210.233:25565 ,�����˷��͸����뷽
echo. ���뷽��
echo. ���� Hiper ��������Ϸ�����롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴�ɣ�
echo. 
echo. ע�⣬������ƾ֤��ʽ����ͨ�ģ�����ʱ������ͬ�� Hiper �汾
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
echo. ����������� Hiper ...
pause>nul

color 2f

echo ������ Hiper ������־��

cd %appdata%\hiper_launcher-play_minecraft\experience
@echo on
call hiper-windows-i386.exe v
@echo off
color cb

echo. ��⣬Hiper�������˳����������ѳ���30���������ڣ�����������������ȻƵ�����֣��븴��������־������QQȺ��93365639 �����з�����
echo. ���������������...
pause>nul
goto experience

::����������������������������������������

:installTab
@echo off
cls
mode con cols=100 lines=30

color 6f

echo. 
echo. ��⵽δ��װ Hiper ������������������ڰ�װ��...
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
@echo off
cls
mode con cols=80 lines=15
echo. �����������������������������������ڡ�����������������������������������
echo.
echo. ������Ϊ�������׵ģ�����ʹ�� Hiper ʹ���ż���ʹ�� Hiper ���� Minecraft �����Ĺ���
echo. 
echo. �������� https://github.com/zkitefly/Hiper-Launcher �Ͽ�Դ���������޸Ĵ���
echo. 
echo. ��������� Bat To Exe Converter ����
echo. 
echo. ���������� https://github.com/944390394/hiperapp ���ִ��룬��л֧��
echo. 
echo. �������ˣ�������һ�����ͣ���л����֧�֣����� z �س���ʼ���ͣ�
echo. 
echo. �����������������ҳ
set /p ZC=
if ��%zc%��==��z�� start https://zkitefly.github.io/zanzhu.png
pause>nul
goto home