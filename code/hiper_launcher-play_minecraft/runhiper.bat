@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
echo. OK
goto run

:run
title Hiper ��������
cls
echo. Hiper ��������...
echo.
echo. ����Բ��ؿ��˴�������رգ���С�����ڼ��ɣ�
echo. 
echo. -------------------------------------------------------------------------------
echo.                                      
echo.                          �뷵�ؽ̴̳��ڣ����鿴��һ����
echo. 
echo. -------------------------------------------------------------------------------
echo. 
timeout /T 5

goto hiper

:hiper

echo. ����Ϊ Hiper ����ʱ����־
cd %appdata%\hiper_launcher-play_minecraft\hiper

call hiper.exe


echo. -------------------------------------------------------------------------------
echo.                               
echo.         Hiper �������˳�������� Hiper ��־������ QQ Ⱥѯ�ʣ�93365639
echo. �������˳���ԭ���У�
echo. 1.ƾ֤֤�鳬������Ч�ڡ���������Ҫ���»��ƾ֤֤��
echo.   ����־�г��� hiper certificate for this host is expired �������
echo.   ��������Ҫ���»��ƾ֤֤��
echo. ......
echo. 
echo. -------------------------------------------------------------------------------
echo.
pause
goto hiper2

:hiper2
cls
echo. ������Ϊ Hiper ����ʱ����־��
cd %appdata%\hiper_launcher-play_minecraft\hiper

call hiper.exe

echo. -------------------------------------------------------------------------------
echo.                               
echo.         Hiper �������˳�������� Hiper ��־������ QQ Ⱥѯ�ʣ�93365639
echo. �������˳���ԭ���У�
echo. 1.ƾ֤֤�鳬������Ч�ڡ���������Ҫ���»��ƾ֤֤��
echo.   ����־�г��� hiper certificate for this host is expired �������
echo.   ��������Ҫ���»��ƾ֤֤��
echo. ......
echo. 
echo. -------------------------------------------------------------------------------
echo.
pause
goto hiper2