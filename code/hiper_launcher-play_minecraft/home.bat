@echo off

::���ñ���
title Hiper Launcher - Play Minecraft

::���ô��ڴ�С
mode con cols=70 lines=14

del /f /s /q C:\Windows\Temp\update.bat

goto home

:home-0
cls
goto home

:home

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo. ��ӭʹ�� Hiper Launcher - Play Minecraft v1.4
echo. ���� a �س��ɲ鿴���������ҳ��
echo. ƾ֤���� https://mcer.cn/shop �й��򣬿ɼ���QQȺ��93365639��Ѱ�����
echo. 
echo. ���� 0 �س������� Hiper 30 ��������汾
echo. ֱ�ӻس������� Hiper ƾ֤�汾
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

goto home
