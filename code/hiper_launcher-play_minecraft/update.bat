:token
@echo off

cls

mode con cols=70 lines=15

title Update...

echo. ���ڼ�������£�������ҪһЩʱ��...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/experience.bat

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/home.bat

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -P %appdata%\hiper_launcher-play_minecraft -S -T 5 https://raw.fastgit.org/zkitefly/Hiper-Launcher/main/code/hiper_launcher-play_minecraft/token.bat

call %appdata%\hiper_launcher-play_minecraft\home.bat 
