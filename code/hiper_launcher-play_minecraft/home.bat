@echo off

if not exist C:\Set_HiPer_Windows_Firewall_to_pass_successfully.txt call %appdata%\hiper_launcher-play_minecraft\Giving_HiPer_Windows_Firewall_Pass-Through.bat
goto add_ok

:add_ok
title Hiper Launcher - Play Minecraft
mode con cols=90 lines=20
goto home

:home
cls

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo --------------------��ӭʹ�� Hiper Launcher - Play Minecraft v1.5.2-----------------------
echo.=         ƾ֤���� https://mcer.cn/shop �й��򣬿ɼ���QQȺ��93365639��Ѱ�����           =
echo.-------------------------------------�˰汾��������---------------------------------------
echo.=                          1.������ʾ�Ű沼�� 2.�޸ġ������ʾ                           =
echo.--------------------------------------����ѡ�����----------------------------------------
echo.=                                                                                        =
echo.=                            �����a���ɲ鿴���������ҳ��                               =
echo.=               �����0�������� Hiper 30 ��������汾(����ȡ��������״��)                =
echo.=  ��ֱ�ӻس����������1�������� Hiper ƾ֤�汾(�Ƽ�����������󲿷�����״�����ӵ����)  =
echo.=                                                                                        =
echo.------------------------------------------------------------------------------------------
set /p mm=������ѡ��س���
if ��%mm%��==��0�� start experience.bat

if ��%mm%��==��i�� start installTab.bat
if ��%mm%��==��I�� start installTab.bat

if ��%mm%��==��u�� start update.bat
if ��%mm%��==��U�� start update.bat

if ��%mm%��==��a�� call about.bat
if ��%mm%��==��A�� call about.bat

if ��%mm%��==���� start token.bat
if ��%mm%��==��1�� start token.bat

goto home
