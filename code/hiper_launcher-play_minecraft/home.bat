@echo off

if not exist C:\Set_Hiper_Windows_Firewall_to_pass_successfully.txt call %appdata%\hiper_launcher-play_minecraft\Giving_HiPer_Windows_Firewall_Pass-Through.bat
goto add_ok

:add_ok
title Hiper Launcher - Play Minecraft

goto home

:home
cls

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo.--------------------��ӭʹ�� Hiper Launcher - Play Minecraft v1.6-------------------------
echo.
echo.          ƾ֤���� https://mcer.cn/shop �й��򣬿ɼ���QQȺ��93365639��Ѱ�����           
echo.
echo.-------------------------------------�˰汾��������---------------------------------------
echo.             1.����Hiper_plus������Ϊƾ֤������2.���¡�����Hiper���кõ�����                
echo.--------------------------------------����ѡ�����----------------------------------------
echo.
echo.                             �����a���ɲ鿴���������ҳ��                               
echo.                                                                                         
echo.******************************   ����� 0 �������� Hiper   *******************************
::echo.        �������1�������� Hiper ƾ֤�汾(�Ƽ�����������󲿷�����״�����ӵ����)       
echo.                                                                                         
echo.------------------------------------------------------------------------------------------
echo.
set /p mm=������ѡ��س���
if ��%mm%��==��0�� call hiper.bat

if ��%mm%��==��u�� call update.bat
if ��%mm%��==��U�� call update.bat

if ��%mm%��==��a�� call about.bat
if ��%mm%��==��A�� call about.bat

if ��%mm%��==��1�� call hiper_plus.bat

if ��%mm%��==��fhq�� call Giving_HiPer_Windows_Firewall_Pass-Through.bat

goto home
