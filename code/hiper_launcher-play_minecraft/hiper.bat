@echo off

cls

%appdata%\hiper_launcher-play_minecraft\wget.exe -q -N -P %appdata%\hiper_launcher-play_minecraft\hiper -S -T 2 https://gitcode.net/to/hiper/-/raw/master/windows-386/hiper.exe

:home
cls

color 8f

echo.
echo. -------------------------------------------------------------------------------
echo.
echo.                       老手（1）                 新手（2）                      
echo.
echo. -------------------------------------------------------------------------------
echo.
set /P laoxingshou=请选择你的身份：
if "%laoxingshou%"=="1" goto laoshou
if "%laoxingshou%"=="2" goto jc
goto home

:jc     
cls
echo.
echo. -------------------------------------------------------------------------------
echo.
echo.                    创建方（1）                 加入方（2）                     
echo.
echo. -------------------------------------------------------------------------------
echo.
set /P shenfen=请选择你的身份：
if "%shenfen%"=="1" goto c1
if "%shenfen%"=="2" goto j1

goto jc

::________________________创建方_________________________

:c1
echo. 
echo. ---------------------------------  步骤一  ------------------------------------
echo.
echo.                   启动你的游戏（不限制你启动游戏的启动器）                 
echo.   
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键下一步→】
pause>null
goto c2

:c2
echo.
echo. ---------------------------------  步骤二  ------------------------------------
echo.
echo.                 在游戏中点击【单人游戏】，进入你要联机的世界                  
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键下一步→】
pause>null
goto c3

:c3
echo.
echo. ---------------------------------  步骤三  ------------------------------------
echo.
echo.       点击键盘上的【Esc】键，打开游戏菜单，并在游戏中点击【对局域网开放】，   
echo.           依照提示对局域网开放，此时在聊天栏中显示开放的端口，将其记下        
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键下一步→】
pause>null
goto c4?

:c4?
if not exist %appdata%\hiper_launcher-play_minecraft\hiper\config.yml goto c4
echo. 
echo. ---------------------------------  步骤四  ------------------------------------
echo. =
echo. =             已检测到已保存过证书，是否进入步骤四呢（是：1 ；否：2）
echo. =
echo. -------------------------------------------------------------------------------
echo. 
set /P cyjcdzs=请输入选项回车：
if "%cyjcdzs%"=="1" goto c4
if "%cyjcdzs%"=="2" goto c6
goto c4

:c4
cls
echo.
echo. ---------------------------------  步骤四  ------------------------------------
echo.
echo.                            获取 Hiper 使用证书。
echo.  获取有以下渠道：
echo.                        
echo.  1.在 https://mcer.cn/116.html 下方的商品简介中的游客购买，
echo.    获取邀请码注册 mcer.cn 网站，
echo.    然后你可以此处获得使用证书：
echo.    https://mcer.cn/122.html 或 https://mcer.cn/123.html 
echo.  2.加入QQ群：93365639 ，有相关人士能帮助获得
echo.  ......
echo.   
echo. -------------------------------------------------------------------------------
echo. 
echo. 【按任意键下一步→】
pause>null
goto c5

:c5
cls
echo. 
echo. ---------------------------------  步骤五  ------------------------------------
echo.
echo.                                   保存证书。                                  
echo.  有以下保存方式：
echo.  
echo.   1.将证书文件放置文件夹中并重命名成 1.yml（1）
echo.   2.输入凭证密钥，下载证书（凭证不能超过 24 小时再下载否则下载失败，2）              
::echo.   3.将证书文件完整内容粘贴至文件中（3）
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P czhengshusave=请选择你要保存证书的方式：
if "%czhengshusave%"=="1" goto cwjjsave
if "%czhengshusave%"=="2" goto cdowsave
::if "%czhengshusave%"=="3" gowto cpastesave
goto c5

:cwjjsave
cls
echo.
echo. ---------------------------------  步骤五  ------------------------------------
echo.
echo.                      保存证书。你已选择第一种保存方式
echo.  接下来你要操作的是：
echo. 
echo.   1.程序将打开一个文件夹，请将你获取到的文件后缀为 .yml 的文件拷贝进文件夹中
echo.   2.将拷贝进去的 .yml 文件重命名为 1.yml 文件即可
echo. 
echo. -------------------------------------------------------------------------------
echo.
start https://gitcode.net/chearlai/f/-/raw/master/p/1.png
echo. 【按任意键开始→】
pause>null
::复制文件
md %temp%\zssave
start explorer "%temp%\zssave"
echo. 
echo. 【放置完成请按任意键下一步→】
pause>nul
if not exist %temp%\zssave\1.yml goto cnozs1
echo. 
echo. 已检测到 1.yml 文件！
echo. 
xcopy %temp%\zssave\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo. 
echo. 【按任意键下一步→】
pause>nul
goto c6
:cnozs1
echo. 
echo. 未检测到文件夹中存在 1.yml ，请检查是否操作正确！
echo. 
echo. 【请按任意键返回←】
pause>nul
goto c5

:cdowsave
cls
echo.
echo. ---------------------------------  步骤五  ------------------------------------
echo.
echo.                       保存证书。你已选择第二种保存方式
echo.  接下来你要操作的是：
echo.  
echo.   1.请输入获取凭证的密钥
echo.   2.等待下载完成证书
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P cdowzs=请输入获取凭证的密钥：
echo. 
echo. 证书下载中...
echo. 
%appdata%\hiper_launcher-play_minecraft\wget.exe -P %appdata%\hiper_launcher-play_minecraft -O %temp%\1.yml https://cert.mcer.cn/"%cdowzs%".yml
if not exist %temp%\1.yml goto cnopz2
echo. 
echo. 证书下载完成！
echo. 
xcopy %temp%\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo. 
echo. 【请按任意键继续→】
pause>nul
goto c6
:cnozs2
echo.
echo. 未检测到文件夹中存在 1.yml ，可能该凭证已超过 24 小时，
echo. 超过 24 小时则不会提供下载证书服务！
echo.
echo. 【请按任意键返回←】
pause>nul
goto c5

:cpastesave
cls
echo.
echo. ---------------------------------  步骤五  ------------------------------------
echo.
echo.                       保存证书。你已选择第三种保存方式
echo.  接下来你要操作的是：
echo.  
echo.   1.程序将行打开一个文本文件
echo.   2.将获取到的证书内容粘贴到文本文件中
echo.  
echo. -------------------------------------------------------------------------------
echo.
echo. 【请按任意键继续→】
pause>nul
echo.>%appdata%\hiper_launcher-play_minecraft\证书.txt
start %appdata%\hiper_launcher-play_minecraft\证书.txt
echo.
echo.
echo. 【粘贴完成请关闭窗口并按任意键下一步→】
if not exist %appdata%\hiper_launcher-play_minecraft\证书.txt goto cnopz
xcopy %appdata%\hiper_launcher-play_minecraft\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo.
echo. 保存成功！
echo.
echo. 【按任意键下一步→】
pause>nul
goto c6

:c6
cls
echo.
echo. ---------------------------------  步骤六  ------------------------------------
echo.
echo.                      运行Hiper，然后不出意外就会正常的了
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键运行→】
pause>nul

start %appdata%\hiper_launcher-play_minecraft\runhiper.bat

echo.
echo.
echo. 【请按任意键下一步→】
pause>nul
goto c7

:c7
echo. ---------------------------------  步骤七  ------------------------------------
echo.                              
echo.                接下来将制作“加入码”，然后将他发送给你的加入方
echo. 制作步骤：
echo.  
echo.  1.打开你的证书下载页面，找到你与证书对应的那一行，
echo.    将“序列号 / 地址”对应一栏的的 IP 记录下来，如 6.0.0.1 ；
echo.  2.我们在 步骤三 中 聊天栏中显示开放的端口 记录下来，如 25565 ；
echo.  3.将 IP 和 聊天栏中显示开放的端口 以 IP:端口 的形式组合
echo.    例如 6.0.0.1:25565 。
echo.
echo. -------------------------------------------------------------------------------
echo. 
start https://gitcode.net/chearlai/f/-/raw/master/p/2.png
echo. 【完成√】
pause>nul
goto c7

:j1
echo.
echo. ---------------------------------  步骤一  ------------------------------------
echo.
echo.                            获取 Hiper 使用证书。
echo.  获取有以下渠道：
echo.                        
echo.  1.在 https://mcer.cn/116.html 下方的商品简介中的游客购买，
echo.    获取邀请码注册 mcer.cn 网站，
echo.    然后你可以此处获得使用证书：
echo.    https://mcer.cn/122.html 或 https://mcer.cn/123.html 
echo.  2.加入QQ群：93365639 ，有相关人士能帮助获得
echo.  ......
echo.   
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键下一步→】
pause>nul
goto j2?

:j2?
cls
if not exist %appdata%\hiper_launcher-play_minecraft\hiper\config.yml goto j2
echo.
echo. ---------------------------------  步骤一  ------------------------------------
echo. =
echo. =             已检测到已保存过证书，是否进入步骤二呢（是：1 ；否：2）
echo. =
echo. -------------------------------------------------------------------------------
echo.
set /P cyjcdzs=请输入选项回车：
if "%cyjcdzs%"=="1" goto j2
if "%cyjcdzs%"=="2" goto j3
goto j2



:j2
cls
echo. 
echo. ---------------------------------  步骤二  ------------------------------------
echo.
echo.                                   保存证书。                                  
echo.  有以下保存方式：
echo.  
echo.   1.将证书文件放置文件夹中并重命名成 1.yml（1）
echo.   2.输入凭证密钥，下载证书（凭证不能超过 24 小时再下载否则下载失败，2）              
::echo.   3.将证书文件完整内容粘贴至文件中（3）
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P czhengshusave=请选择你要保存证书的方式：
if "%czhengshusave%"=="1" goto jwjjsave
if "%czhengshusave%"=="2" goto jdowsave
::if "%czhengshusave%"="3" gowto jpastesave
goto j2

:jwjjsave
cls
echo.
echo. ---------------------------------  步骤二  ------------------------------------
echo.
echo.                      保存证书。你已选择第一种保存方式
echo.  接下来你要操作的是：
echo. 
echo.   1.程序将打开一个文件夹，请将你获取到的文件后缀为 .yml 的文件拷贝进文件夹中
echo.   2.将拷贝进去的 .yml 文件重命名为 1.yml 文件即可
echo. 
echo. -------------------------------------------------------------------------------
echo.
start https://gitcode.net/chearlai/f/-/raw/master/p/1.png
echo. 【按任意键开始→】
pause>nul
md %temp%\zssave
start explorer "%temp%\zssave"
echo.
echo.
echo. 【放置完成请按任意键下一步→】
pause>nul
if not exist %temp%\zssave\1.yml goto jnozs1
echo. 已检测到 1.yml 文件！
xcopy %temp%\zssave\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo.
echo.
echo. 【按任意键下一步→】
pause>nul
goto j3
:jnozs1
echo.
echo. 未检测到文件夹中存在 1.yml ，请检查是否操作正确！
echo.
echo. 【请按任意键返回←】
pause>nul
goto j2

:jdowsave
cls
echo.
echo. ---------------------------------  步骤二  ------------------------------------
echo.
echo.                       保存证书。你已选择第二种保存方式
echo.  接下来你要操作的是：
echo.  
echo.   1.请输入获取凭证的密钥
echo.   2.等待下载完成证书
echo.  
echo. -------------------------------------------------------------------------------
echo.
set /P jdowzs=请输入获取凭证的密钥：
echo.
echo. 证书下载中...
%appdata%\hiper_launcher-play_minecraft\wget.exe -P %appdata%\hiper_launcher-play_minecraft -O 1.yml https://cert.mcer.cn/"%jdowzs%".yml
if not exist %appdata%\hiper_launcher-play_minecraft\1.yml goto jnopz2
echo.
echo. 证书下载完成！
xcopy %appdata%\hiper_launcher-play_minecraft\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y 
echo.
echo. 【请按任意键下一步→】
pause>nul
goto j3
:jnozs2  ::_________________________________________
echo.
echo. 未检测到文件夹中存在 1.yml ，可能该凭证已超过 24 小时，
echo. 超过 24 小时则不会提供下载证书服务！
echo.
echo. 【请按任意键返回←】
pause>nul
goto j2

:jpastesave
cls
echo.
echo. ---------------------------------  步骤二  ------------------------------------
echo.
echo.                       保存证书。你已选择第三种保存方式
echo.  接下来你要操作的是：
echo.  
echo.   1.程序将行打开一个文本文件
echo.   2.将获取到的证书内容粘贴到文本文件中
echo.  
echo. -------------------------------------------------------------------------------
echo.
echo. 【请按任意键继续→】
pause>nul
echo.>%appdata%\hiper_launcher-play_minecraft\证书.txt
start %appdata%\hiper_launcher-play_minecraft\证书.txt
echo.
echo. 【粘贴完成请保存并关闭窗口，并按任意键下一步→】
xcopy %appdata%\hiper_launcher-play_minecraft\1.yml %appdata%\hiper_launcher-play_minecraft\hiper\config.yml /y
echo.
echo. 保存成功！
echo.
echo. 【请按任意键下一步→】
pause>nul
goto j3

:j3
cls
echo.
echo. ---------------------------------  步骤三  ------------------------------------
echo.
echo.                      运行Hiper，然后不出意外就会正常的了
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键运行→】
pause>nul

start %appdata%\hiper_launcher-play_minecraft\runhiper.bat

echo.
echo.
echo. 【请按任意键下一步→】
pause>nul
goto j4

:j4
echo. 
echo. ---------------------------------  步骤四  ------------------------------------
echo.
echo. 启动你的游戏（不限制你启动游戏的启动器，启动时要用非离线账户启动，及正版和外置账户账户）
echo.                  相关账户问题请查看此处：http://8r5.cn/eeQBz
echo.   
echo. -------------------------------------------------------------------------------
echo.
echo. 【按任意键下一步→】
pause>nul
goto j5

:j5
echo.
echo. ---------------------------------  步骤五  ------------------------------------
echo.
echo. 在游戏中点击【多人游戏】》【直接连接】，输入创建方发你的“加入码”，进入就完成了！
echo.
echo.                  Hiper 相关问题可以查看 http://8r5.cn/esfBJ
echo.                         或加入 QQ 群提问：93365639
echo.
echo. -------------------------------------------------------------------------------
echo.
echo. 【完成√】
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
echo. 只需将证书文件放置到新打开的文件夹中（C:\Hiper），并重命名成 config.yml 
echo.
echo. 如果在 新手 身份中保存过证书，无需再次放置！
echo.
echo. 然后右键 Hiper.exe ，选择 以管理员身份运行，不出意外 Hiper 就启动了！
echo. 
pause
goto home



























