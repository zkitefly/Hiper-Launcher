@echo off

cls

title Update...

echo -------------------------------------------------------------------------------
echo.
echo  正在检查程序更新，可能需要一些时间...
echo.
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/hiper.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  正在检查程序更新，可能需要一些时间...
echo.
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/home.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  正在检查程序更新，可能需要一些时间...
echo
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/hiper_plus.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  正在检查程序更新，可能需要一些时间...
echo.
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/Giving_HiPer_Windows_Firewall_Pass-Through.bat

cls

echo -------------------------------------------------------------------------------
echo.
echo  正在检查程序更新，可能需要一些时间...
echo.
echo -------------------------------------------------------------------------------


%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/about.bat

cls

echo -------------------------------------------------------------------------------
echo.   
echo  正在检查程序更新，可能需要一些时间...
echo. 
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/d-update.bat

cls

echo -------------------------------------------------------------------------------
echo.   
echo  正在检查程序更新，可能需要一些时间...
echo. 
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -t 100 https://gitee.com/bleaker/hiper-launcher/raw/main/code/hiper_launcher-play_minecraft/runhiper.exe

call %appdata%\hiper_launcher-play_minecraft\home.bat 