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
echo. ���س�������ҳ
set /p ZC=
if ��%zc%��==��z�� start https://zkitefly.github.io/zanzhu.png
if ��%zc%��==���� call %appdata%\hiper_launcher-play_minecraft\home.bat
pause>nul

call %appdata%\hiper_launcher-play_minecraft\home.bat