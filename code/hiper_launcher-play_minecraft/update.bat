@echo off

cls

title Update...

echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         正在检查程序更新，可能需要一些时间...                                       =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/experience.bat

cls

echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         正在检查程序更新，可能需要一些时间...                                       =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/home.bat

cls

echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         正在检查程序更新，可能需要一些时间...                                       =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/token.bat

cls

echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         正在检查程序更新，可能需要一些时间...                                       =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/Giving_HiPer_Windows_Firewall_Pass-Through.bat

cls

echo. -----------------------------------------------------------------------------------------------------------------------
echo  =                                                                                                                     =
echo. =                                         正在检查程序更新，可能需要一些时间...                                       =
echo  =                                                                                                                     =
echo. -----------------------------------------------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/about.bat

cls

echo -------------------------------------------------------------------------------
echo  
echo  正在检查程序更新，可能需要一些时间...
echo
echo -------------------------------------------------------------------------------

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://zkitefly.github.io/Hiper-Launcher/code/hiper_launcher-play_minecraft/v.txt

call %appdata%\hiper_launcher-play_minecraft\home.bat 