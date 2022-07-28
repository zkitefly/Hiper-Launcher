@echo off

cls

title Update...

echo. 正在检查程序更新，可能需要一些时间...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/experience.bat

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/home.bat

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/token.bat

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/Giving_HiPer_Windows_Firewall_Pass-Through.bat

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -T 5 -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/about.bat

call %appdata%\hiper_launcher-play_minecraft\home.bat 