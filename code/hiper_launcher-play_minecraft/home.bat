@echo off

if not exist C:\Giving_HiPer_Windows_Firewall_Pass-Through.txt call %appdata%\hiper_launcher-play_minecraft\Giving_HiPer_Windows_Firewall_Pass-Through.bat
goto add_ok

:add_ok
title Hiper Launcher - Play Minecraft
mode con cols=90 lines=20
goto home

:home
cls

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo. ��ӭʹ�� Hiper Launcher - Play Minecraft v1.5
echo. ���� a �س��ɲ鿴���������ҳ��
echo. ƾ֤���� https://mcer.cn/shop �й��򣬿ɼ���QQȺ��93365639��Ѱ�����
echo. 
echo. ���� 0 �س������� Hiper 30 ��������汾������ȡ��������״����
echo. ֱ�ӻس� �� ���� 1 �س� ������ Hiper ƾ֤�汾���Ƽ�����������󲿷�����״�����ӵ������
echo.
set /p mm=������ Hiper ����ģʽ��
if ��%mm%��==��0�� call experience.bat

if ��%mm%��==��i�� call installTab.bat
if ��%mm%��==��I�� call installTab.bat

if ��%mm%��==��u�� call update.bat
if ��%mm%��==��U�� call update.bat

if ��%mm%��==��a�� call about.bat
if ��%mm%��==��A�� call about.bat

if ��%mm%��==���� call token.bat
if ��%mm%��==��1�� call token.bat

goto home
