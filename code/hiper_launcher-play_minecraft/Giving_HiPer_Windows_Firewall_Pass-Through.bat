@echo off

echo. 
echo. ------------------------------------------------------------
echo.
echo. 为了 Hiper 使用体验达到最佳
echo. 
echo. 我们希望能将 Windows 防火墙关闭(仅来宾或公用网络防火墙) 
echo. 以达到最佳联机体验（延迟，连接等问题有所改善）
echo.
echo. 你仍旧可以在相关设置中开启他
echo. 
echo. 是否允许？（是：1 或 回车 ；否：0）
echo.
echo. 若选择是,则将 Windows 防火墙关闭(仅来宾或公用网络防火墙) 
echo.
echo. 若选择否,则将会尝试添加防火墙通行权限，可能会没啥用...
echo.
echo. ***********  若不知道该选择什么，直接回车即可！  ***********
echo.
echo. ------------------------------------------------------------
echo.
set /P fhq=输入选项回车：
if "%fhq%"=="1" goto closefhq
if "%fhq%"=="2" goto add
goto closefhq

:add
cls
                                                                                                                      
echo.  正在添加防火墙通行权限...

netsh advfirewall firewall add rule name="hiper.exe" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\hiper\hiper.exe" enable=yes

netsh advfirewall firewall add rule name="hiper.exe" dir=out action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\hiper\hiper.exe" enable=yes

netsh advfirewall firewall add rule name="hpr_env.exe" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\hiper_plus\hpr_env.exe" enable=yes

netsh advfirewall firewall add rule name="hpr_env.exe" dir=out action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\hiper_plus\hpr_env.exe" enable=yes

netsh advfirewall firewall add rule name="hpr.exe" dir=in action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\hiper_plus\hpr.exe" enable=yes

netsh advfirewall firewall add rule name="hpr.exe" dir=out action=allow program="%appdata%\Roaming\hiper_launcher-play_minecraft\hiper_plus\hpr.exe" enable=yes

echo.>C:\Set_Hiper_Windows_Firewall_to_pass_successfully.txt

echo. 
echo. ------------------------------------------------------------
echo.                                                                                                                       
echo.  已添加防火墙通行权限                                     
echo.                                                                                                                    
echo. ------------------------------------------------------------
echo. 

timeout /T 10

call %appdata%\Roaming\hiper_launcher-play_minecraft\home.bat

:closefhq
cls

echo.  正在关闭 Windows 防火墙(仅来宾或公用网络防火墙) ...

netsh advfirewall set publicprofile state off

echo.>C:\Set_Hiper_Windows_Firewall_to_pass_successfully.txt

::https://blog.csdn.net/no1xium/article/details/107358939

echo. 
echo. ------------------------------------------------------------
echo.                                                                                                                       
echo.  已关闭 Windows 防火墙(仅来宾或公用网络防火墙)                            
echo.                                                                                                                    
echo. ------------------------------------------------------------
echo. 

timeout /T 10

call %appdata%\Roaming\hiper_launcher-play_minecraft\home.bat



















