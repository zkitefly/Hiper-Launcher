@echo off

::���ñ���
title Hiper Launcher - Play Minecraft

::���ô��ڴ�С
mode con cols=70 lines=14

goto home

:home-0
cls
goto home

:home

color 1f

cd %appdata%\hiper_launcher-play_minecraft\

echo. ��ӭʹ�� Hiper Launcher - Play Minecraft v1.3
echo. �س��ɲ鿴���������ҳ��
echo. ƾ֤���� https://mcer.cn/shop �й��򣬿ɼ���QQȺ��93365639��Ѱ�����
echo. 
echo. ���� 0 �س������� Hiper 30 ��������汾
echo. ���� 1 �س������� Hiper ƾ֤�汾
echo.
set /p mm=������ Hiper ����ģʽ��
if ��%mm%��==��0�� call experience.bat
if ��%mm%��==��1�� call token.bat
if ��%mm%��==��i�� call installTab.bat
if ��%mm%��==��I�� call installTab.bat
if ��%mm%��==��u�� call update.bat
if ��%mm%��==��U�� call update.bat

:about
@echo off
cls
mode con cols=80 lines=17

color df

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
goto home-0