@echo off

cls

title Update...

echo -------------------------------------------------------------------------------
echo.
echo  ���ڼ�������£�������ҪһЩʱ��...
echo.
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/experience.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  ���ڼ�������£�������ҪһЩʱ��...
echo.
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/home.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  ���ڼ�������£�������ҪһЩʱ��...
echo
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/token.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  ���ڼ�������£�������ҪһЩʱ��...
echo.
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/Giving_HiPer_Windows_Firewall_Pass-Through.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  ���ڼ�������£�������ҪһЩʱ��...
echo.
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/about.bat

cls

echo -------------------------------------------------------------------------------
echo.   
echo  ���ڼ�������£�������ҪһЩʱ��...
echo. 
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/d-update.bat

del /f /s /q %appdata%\hiper_launcher-play_minecraft\d-update.bat

call %appdata%\hiper_launcher-play_minecraft\home.bat 