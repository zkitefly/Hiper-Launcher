@echo off

echo. 
echo. ------------------------------------------------------------
echo.
echo. Ϊ�� Hiper ʹ������ﵽ���
echo. 
echo. ����ϣ���ܽ� Windows ����ǽ�ر�(�����������������ǽ) 
echo. �Դﵽ����������飨�ӳ٣����ӵ������������ƣ�
echo.
echo. ���Ծɿ�������������п�����
echo. 
echo. �Ƿ��������ǣ�1 �� �س� ����0��
echo.
echo. ��ѡ����,�� Windows ����ǽ�ر�(�����������������ǽ) 
echo.
echo. ��ѡ���,�򽫻᳢����ӷ���ǽͨ��Ȩ�ޣ����ܻ�ûɶ��...
echo.
echo. ***********  ����֪����ѡ��ʲô��ֱ�ӻس����ɣ�  ***********
echo.
echo. ------------------------------------------------------------
echo.
set /P fhq=����ѡ��س���
if "%fhq%"=="1" goto closefhq
if "%fhq%"=="2" goto add
goto closefhq

:add
cls
                                                                                                                      
echo.  ������ӷ���ǽͨ��Ȩ��...

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
echo.  ����ӷ���ǽͨ��Ȩ��                                     
echo.                                                                                                                    
echo. ------------------------------------------------------------
echo. 

timeout /T 10

call %appdata%\Roaming\hiper_launcher-play_minecraft\home.bat

:closefhq
cls

echo.  ���ڹر� Windows ����ǽ(�����������������ǽ) ...

netsh advfirewall set publicprofile state off

echo.>C:\Set_Hiper_Windows_Firewall_to_pass_successfully.txt

::https://blog.csdn.net/no1xium/article/details/107358939

echo. 
echo. ------------------------------------------------------------
echo.                                                                                                                       
echo.  �ѹر� Windows ����ǽ(�����������������ǽ)                            
echo.                                                                                                                    
echo. ------------------------------------------------------------
echo. 

timeout /T 10

call %appdata%\Roaming\hiper_launcher-play_minecraft\home.bat



















