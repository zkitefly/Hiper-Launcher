@echo off

cls

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -P %appdata%\hiper_launcher-play_minecraft\hiper -S -T 2 https://gitcode.net/to/hiper/-/raw/master/windows-386/hiper.exe

:home
cls

color 8f

echo.
echo. -------------------------------------------------------------------------------
echo.
echo.                       ���֣�1��                 ���֣�2��                      
echo.
echo. -------------------------------------------------------------------------------
echo.
set /P laoxingshou=��ѡ�������ݣ�
if "%laoxingshou%"=="1" goto laoshou
if "%laoxingshou%"=="2" goto jc
goto home

:jc     
cls
echo.
echo. -------------------------------------------------------------------------------
echo.
echo.                    ��������1��                 ���뷽��2��                     
echo.
echo. -------------------------------------------------------------------------------
echo.
set /P shenfen=��ѡ�������ݣ�
if "%shenfen%"=="1" goto c1
if "%shenfen%"=="2" goto j1

goto jc

::________________________������_________________________

:c1
echo. 
echo. ---------------------------------  ����һ  ------------------------------------
echo.
echo.                   ���������Ϸ����������������Ϸ����������                 
echo.   
echo. -------------------------------------------------------------------------------
echo.
echo. �����������һ������
pause>null
goto c2

:c2
echo.
echo. ---------------------------------  �����  ------------------------------------
echo.
echo.                 ����Ϸ�е����������Ϸ����������Ҫ����������                  
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. �����������һ������
pause>null
goto c3

:c3
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.       ��������ϵġ�Esc����������Ϸ�˵���������Ϸ�е�����Ծ��������š���   
echo.           ������ʾ�Ծ��������ţ���ʱ������������ʾ���ŵĶ˿ڣ��������        
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. �����������һ������
pause>null
goto c4?

:c4?
if not exist %appdata%\hiper_launcher-play_minecraft\hiper\config.yml goto c4
echo. 
echo. ---------------------------------  ������  ------------------------------------
echo. =
echo. =             �Ѽ�⵽�ѱ����֤�飬�Ƿ���벽�����أ��ǣ�1 ����2��
echo. =
echo. -------------------------------------------------------------------------------
echo. 
set /P cyjcdzs=������ѡ��س���
if "%cyjcdzs%"=="1" goto c4
if "%cyjcdzs%"=="2" goto c6
goto c4

:c4
cls
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                            ��ȡ Hiper ʹ��֤�顣
echo.  ��ȡ������������
echo.                        
echo.  1.�� https://mcer.cn/116.html �·�����Ʒ����е��ο͹���
echo.    ��ȡ������ע�� mcer.cn ��վ��
echo.    Ȼ������Դ˴����ʹ��֤�飺
echo.    https://mcer.cn/122.html �� https://mcer.cn/123.html 
echo.  2.����QQȺ��93365639 ���������ʿ�ܰ������
echo.  ......
echo.   
echo. -------------------------------------------------------------------------------
echo. 
echo. �����������һ������
pause>null
goto c5

:c5
cls
echo. 
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                                   ����֤�顣                                  
echo.  �����±��淽ʽ��
echo.  
echo.   1.��֤���ļ������ļ����в��������� 1.yml��1��
echo.   2.����ƾ֤��Կ������֤�飨ƾ֤���ܳ��� 24 Сʱ�����ط�������ʧ�ܣ�2��              
::echo.   3.��֤���ļ���������ճ�����ļ��У�3��
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P czhengshusave=��ѡ����Ҫ����֤��ķ�ʽ��
if "%czhengshusave%"=="1" goto cwjjsave
if "%czhengshusave%"=="2" goto cdowsave
::if "%czhengshusave%"=="3" gowto cpastesave
goto c5

:cwjjsave
cls
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                      ����֤�顣����ѡ���һ�ֱ��淽ʽ
echo.  ��������Ҫ�������ǣ�
echo. 
echo.   1.���򽫴�һ���ļ��У��뽫���ȡ�����ļ���׺Ϊ .yml ���ļ��������ļ�����
echo.   2.��������ȥ�� .yml �ļ�������Ϊ 1.yml �ļ�����
echo. 
echo. -------------------------------------------------------------------------------
echo.
start https://gitcode.net/chearlai/f/-/raw/master/p/1.png
echo. �����������ʼ����
pause>null
::�����ļ�
md %temp%\zssave
start explorer "%temp%\zssave"
echo. 
echo. ����������밴�������һ������
pause>nul
if not exist %temp%\zssave\1.yml goto cnozs1
echo. 
echo. �Ѽ�⵽ 1.yml �ļ���
echo. 
xcopy %temp%\zssave\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo. 
echo. �����������һ������
pause>nul
goto c6
:cnozs1
echo. 
echo. δ��⵽�ļ����д��� 1.yml �������Ƿ������ȷ��
echo. 
echo. ���밴��������ء���
pause>nul
goto c5

:cdowsave
cls
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                       ����֤�顣����ѡ��ڶ��ֱ��淽ʽ
echo.  ��������Ҫ�������ǣ�
echo.  
echo.   1.�������ȡƾ֤����Կ
echo.   2.�ȴ��������֤��
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P cdowzs=�������ȡƾ֤����Կ��
echo. 
echo. ֤��������...
echo. 
%appdata%\hiper_launcher-play_minecraft\wget.exe -P %appdata%\hiper_launcher-play_minecraft -O %temp%\1.yml https://cert.mcer.cn/"%cdowzs%".yml
if not exist %temp%\1.yml goto cnopz2
echo. 
echo. ֤��������ɣ�
echo. 
xcopy %temp%\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo. 
echo. ���밴�������������
pause>nul
goto c6
:cnozs2
echo.
echo. δ��⵽�ļ����д��� 1.yml �����ܸ�ƾ֤�ѳ��� 24 Сʱ��
echo. ���� 24 Сʱ�򲻻��ṩ����֤�����
echo.
echo. ���밴��������ء���
pause>nul
goto c5

:cpastesave
cls
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                       ����֤�顣����ѡ������ֱ��淽ʽ
echo.  ��������Ҫ�������ǣ�
echo.  
echo.   1.�����д�һ���ı��ļ�
echo.   2.����ȡ����֤������ճ�����ı��ļ���
echo.  
echo. -------------------------------------------------------------------------------
echo.
echo. ���밴�������������
pause>nul
echo.>%appdata%\hiper_launcher-play_minecraft\֤��.txt
start %appdata%\hiper_launcher-play_minecraft\֤��.txt
echo.
echo.
echo. ��ճ�������رմ��ڲ����������һ������
if not exist %appdata%\hiper_launcher-play_minecraft\֤��.txt goto cnopz
xcopy %appdata%\hiper_launcher-play_minecraft\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo.
echo. ����ɹ���
echo.
echo. �����������һ������
pause>nul
goto c6

:c6
cls
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                      ����Hiper��Ȼ�󲻳�����ͻ���������
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. ������������С���
pause>nul

start %appdata%\hiper_launcher-play_minecraft\runhiper.bat

echo.
echo.
echo. ���밴�������һ������
pause>nul
goto c7

:c7
echo. ---------------------------------  ������  ------------------------------------
echo.                              
echo.                �������������������롱��Ȼ�������͸���ļ��뷽
echo. �������裺
echo.  
echo.  1.�����֤������ҳ�棬�ҵ�����֤���Ӧ����һ�У�
echo.    �������к� / ��ַ����Ӧһ���ĵ� IP ��¼�������� 6.0.0.1 ��
echo.  2.������ ������ �� ����������ʾ���ŵĶ˿� ��¼�������� 25565 ��
echo.  3.�� IP �� ����������ʾ���ŵĶ˿� �� IP:�˿� ����ʽ���
echo.    ���� 6.0.0.1:25565 ��
echo.
echo. -------------------------------------------------------------------------------
echo. 
start https://gitcode.net/chearlai/f/-/raw/master/p/2.png
echo. ����ɡ̡�
pause>nul
goto c7

:j1
echo.
echo. ---------------------------------  ����һ  ------------------------------------
echo.
echo.                            ��ȡ Hiper ʹ��֤�顣
echo.  ��ȡ������������
echo.                        
echo.  1.�� https://mcer.cn/116.html �·�����Ʒ����е��ο͹���
echo.    ��ȡ������ע�� mcer.cn ��վ��
echo.    Ȼ������Դ˴����ʹ��֤�飺
echo.    https://mcer.cn/122.html �� https://mcer.cn/123.html 
echo.  2.����QQȺ��93365639 ���������ʿ�ܰ������
echo.  ......
echo.   
echo. -------------------------------------------------------------------------------
echo.
echo. �����������һ������
pause>nul
goto j2?

:j2?
cls
if not exist %appdata%\hiper_launcher-play_minecraft\hiper\config.yml goto j2
echo.
echo. ---------------------------------  ����һ  ------------------------------------
echo. =
echo. =             �Ѽ�⵽�ѱ����֤�飬�Ƿ���벽����أ��ǣ�1 ����2��
echo. =
echo. -------------------------------------------------------------------------------
echo.
set /P cyjcdzs=������ѡ��س���
if "%cyjcdzs%"=="1" goto j2
if "%cyjcdzs%"=="2" goto j3
goto j2



:j2
cls
echo. 
echo. ---------------------------------  �����  ------------------------------------
echo.
echo.                                   ����֤�顣                                  
echo.  �����±��淽ʽ��
echo.  
echo.   1.��֤���ļ������ļ����в��������� 1.yml��1��
echo.   2.����ƾ֤��Կ������֤�飨ƾ֤���ܳ��� 24 Сʱ�����ط�������ʧ�ܣ�2��              
::echo.   3.��֤���ļ���������ճ�����ļ��У�3��
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P czhengshusave=��ѡ����Ҫ����֤��ķ�ʽ��
if "%czhengshusave%"=="1" goto jwjjsave
if "%czhengshusave%"=="2" goto jdowsave
::if "%czhengshusave%"="3" gowto jpastesave
goto j2

:jwjjsave
cls
echo.
echo. ---------------------------------  �����  ------------------------------------
echo.
echo.                      ����֤�顣����ѡ���һ�ֱ��淽ʽ
echo.  ��������Ҫ�������ǣ�
echo. 
echo.   1.���򽫴�һ���ļ��У��뽫���ȡ�����ļ���׺Ϊ .yml ���ļ��������ļ�����
echo.   2.��������ȥ�� .yml �ļ�������Ϊ 1.yml �ļ�����
echo. 
echo. -------------------------------------------------------------------------------
echo.
start https://gitcode.net/chearlai/f/-/raw/master/p/1.png
echo. �����������ʼ����
pause>nul
md %temp%\zssave
start explorer "%temp%\zssave"
echo.
echo.
echo. ����������밴�������һ������
pause>nul
if not exist %temp%\zssave\1.yml goto jnozs1
echo. �Ѽ�⵽ 1.yml �ļ���
xcopy %temp%\zssave\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo.
echo.
echo. �����������һ������
pause>nul
goto j3
:jnozs1
echo.
echo. δ��⵽�ļ����д��� 1.yml �������Ƿ������ȷ��
echo.
echo. ���밴��������ء���
pause>nul
goto j2

:jdowsave
cls
echo.
echo. ---------------------------------  �����  ------------------------------------
echo.
echo.                       ����֤�顣����ѡ��ڶ��ֱ��淽ʽ
echo.  ��������Ҫ�������ǣ�
echo.  
echo.   1.�������ȡƾ֤����Կ
echo.   2.�ȴ��������֤��
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P jdowzs=�������ȡƾ֤����Կ��
echo.
echo. ֤��������...
%appdata%\hiper_launcher-play_minecraft\wget.exe -P %appdata%\hiper_launcher-play_minecraft -O 1.yml https://cert.mcer.cn/"%jdowzs%".yml
if not exist %appdata%\hiper_launcher-play_minecraft\1.yml goto jnopz2
echo.
echo. ֤��������ɣ�
xcopy %appdata%\hiper_launcher-play_minecraft\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y 
echo.
echo. ���밴�������һ������
pause>nul
goto j3
:jnozs2  ::_________________________________________
echo.
echo. δ��⵽�ļ����д��� 1.yml �����ܸ�ƾ֤�ѳ��� 24 Сʱ��
echo. ���� 24 Сʱ�򲻻��ṩ����֤�����
echo.
echo. ���밴��������ء���
pause>nul
goto j2

:jpastesave
cls
echo.
echo. ---------------------------------  �����  ------------------------------------
echo.
echo.                       ����֤�顣����ѡ������ֱ��淽ʽ
echo.  ��������Ҫ�������ǣ�
echo.  
echo.   1.�����д�һ���ı��ļ�
echo.   2.����ȡ����֤������ճ�����ı��ļ���
echo.  
echo. -------------------------------------------------------------------------------
echo.
echo. ���밴�������������
pause>nul
echo.>%appdata%\hiper_launcher-play_minecraft\֤��.txt
start %appdata%\hiper_launcher-play_minecraft\֤��.txt
echo.
echo. ��ճ������뱣�沢�رմ��ڣ������������һ������
xcopy %appdata%\hiper_launcher-play_minecraft\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo.
echo. ����ɹ���
echo.
echo. ���밴�������һ������
pause>nul
goto j3

:j3
cls
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo.                      ����Hiper��Ȼ�󲻳�����ͻ���������
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. ������������С���
pause>nul

start %appdata%\hiper_launcher-play_minecraft\runhiper.bat

echo.
echo.
echo. ���밴�������һ������
pause>nul
goto j4

:j4
echo. 
echo. ---------------------------------  ������  ------------------------------------
echo.
echo. ���������Ϸ����������������Ϸ��������������ʱҪ�÷������˻�������������������˻��˻���
echo.                  ����˻�������鿴�˴���http://8r5.cn/eeQBz
echo.   
echo. -------------------------------------------------------------------------------
echo.
echo. �����������һ������
pause>nul
goto j5

:j5
echo.
echo. ---------------------------------  ������  ------------------------------------
echo.
echo. ����Ϸ�е����������Ϸ������ֱ�����ӡ������봴��������ġ������롱�����������ˣ�
echo.
echo.                  Hiper ���������Բ鿴 http://8r5.cn/esfBJ
echo.                         ����� QQ Ⱥ���ʣ�93365639
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. ����ɡ̡�
pause>nul
goto j5

:laoshou

md C:\Hiper\

xcopy %appdata%\hiper_launcher-play_minecraft\hiper\hiper.exe C:\Hiper\ /y

xcopy %appdata%\hiper_launcher-play_minecraft\hiper\wintun.dll C:\Hiper\ /y

xcopy %appdata%\hiper_launcher-play_minecraft\hiper\config.yml C:\Hiper\ /y

cls

start C:/Hiper

echo. 
echo.
echo. 
echo. ֻ�轫֤���ļ����õ��´򿪵��ļ����У�C:\Hiper�������������� config.yml 
echo.
echo. ����� ���� ����б����֤�飬�����ٴη��ã�
echo.
echo. Ȼ���Ҽ� Hiper.exe ��ѡ�� �Թ���Ա������У��������� Hiper �������ˣ�
echo. 
pause
goto home



























