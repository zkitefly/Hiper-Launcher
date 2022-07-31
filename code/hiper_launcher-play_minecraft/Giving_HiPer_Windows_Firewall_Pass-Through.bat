@echo off

cls

if not exist C:\Set_HiPer_Windows_Firewall_to_pass_successfully.txt goto add
goto ok

:add
echo. ------------------------------------------------------------------------------------------
echo                                                                                                                      
echo.  正在添加 HiPer 本体和 虚拟网卡 的防火墙通行权限                                  
echo                                                                                                                      
echo. ------------------------------------------------------------------------------------------

netsh advfirewall firewall add rule name="hiper-windows-i386" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\experience\hiper-windows-i386.exe" enable=yes

netsh advfirewall firewall add rule name="hpr" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\token\hpr.exe" enable=yes

netsh advfirewall firewall add rule name="hpr_env" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\token\hpr_env.exe" enable=yes

netsh advfirewall firewall add rule name="wintun" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\token\wintun.dll" enable=yes

echo >>C:\Set_HiPer_Windows_Firewall_to_pass_successfully.txt

echo. ------------------------------------------------------------------------------------------
echo                                                                                                                       
echo.  已添加 HiPer 本体和 虚拟网卡 的防火墙通行权限                                     
echo                                                                                                                       
echo. ------------------------------------------------------------------------------------------
timeout /T 5
goto ok

:ok
call %appdata%\hiper_launcher-play_minecraft\home.bat

