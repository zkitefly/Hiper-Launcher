@echo off

title Hiper Launcher - Play Minecraft

@echo off
cls
mode con cols=100 lines=30

color 6f

echo. 
echo. ��⵽δ��װ Hiper ������������������ڰ�װ��...
echo.
echo. �����ǰ�װ������־��
echo. ---------------------------------------------------------------------------------------------------

@echo off

cd %appdata%\hiper_launcher-play_minecraft\experience\windows-tap

call FIRST_RUN_THIS_SCRIPT.bat

echo. ---------------------------------------------------------------------------------------------------

color 2f

echo. ---------------------------------------------------------------------------------------------------
echo. =                                ��װ�������˳�����װ�ɹ���                                       =
echo. ---------------------------------------------------------------------------------------------------
echo. �����������...

@echo off
timeout /T 3

call %appdata%\hiper_launcher-play_minecraft\experience.bat