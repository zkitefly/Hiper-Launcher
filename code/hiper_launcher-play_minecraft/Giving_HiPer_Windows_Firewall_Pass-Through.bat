@echo off

if not exist C:\Giving_HiPer_Windows_Firewall_Pass-Through.txt goto add
goto ok

:add
netsh advfirewall firewall add rule name="hiper-windows-i386" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\experience\hiper-windows-i386.exe" enable=yes

netsh advfirewall firewall add rule name="hpr" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\token\hpr.exe" enable=yes

netsh advfirewall firewall add rule name="hpr_env" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\token\hpr_env.exe" enable=yes

netsh advfirewall firewall add rule name="wintun" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\token\wintun.dll" enable=yes

echo >>C:\Giving_HiPer_Windows_Firewall_Pass-Through.txt

echo. ����� HiPer �� �������� �ķ���ǽͨ��Ȩ��
timeout /T 3
goto ok

:ok
call %appdata%\hiper_launcher-play_minecraft\home.bat

