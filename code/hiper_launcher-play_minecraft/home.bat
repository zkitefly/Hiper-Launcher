@echo off

::设置标题
title Hiper Launcher - Play Minecraft

::设置窗口大小
mode con cols=70 lines=14

cls
goto home

:home
cls

color 8f

echo. 欢迎使用 Hiper Launcher - Play Minecraft v1.1
echo. 输入 a 可查看本程序关于页面
echo. 凭证可在 https://mcer.cn/shop 中购买，可加入QQ群：93365639，寻求帮助
echo. 请输入凭证（输入 0 回车即运行 30 分钟体验版）:
set /p ID=
if “%id%”==“0” goto experience
if “%id%”==“a” goto about
if “%id%”==“A” goto about
if “%id%”==“i” goto installTab
set %id%

:: ————————————————————

:token
@echo off
cls
mode con cols=100 lines=30

color 8b

echo. 
echo. -----------Minecraft 联机教程-----------
echo. 创建方：
echo. 运行 Hiper 后，在日志中找到 CORE ipv4[ 和 ] 之间的IP，如6.0.0.1，然后启动游戏，对局域网开放，
echo. 将 IP 和开放的端口组合成 IP:端口，如 6.0.0.1:25565 ,并将此发送给加入方；
echo. 加入方：
echo. 运行 Hiper 后，启动游戏，进入“多人游戏”》“直接连接”，输入创建方发的文本加入即可！
echo. 
echo. 注意，注意，体验版和凭证版式不互通的，联机时请用相同的 Hiper 版本。创建方和加入方凭证需不相同。
echo. 在此处可以查看相关常见问题：https://zkitefly.github.io/hiper-d/222.html
echo. ————————————————————
echo. 按任意键运行 Hiper ...
pause>nul

color 2f

echo. 以下是 Hiper 运行日志：

cd %appdata%\hiper_launcher-play_minecraft\token

@echo on
hpr.exe -t %id%
@echo off

color cb

echo. 糟糕，Hiper 非正常退出。请复制以上日志发送至QQ群：93365639 ，进行反馈。
echo. 按任意键重新启动...
pause>nil
goto token

:: ————————————————————

:experience
@echo off
cls
if not exist C:\Windows\System32\drivers\tap0901.sys goto installTab
mode con cols=100 lines=30
echo. 虚拟网卡已安装

color 8b

echo. 
echo. -----------Minecraft 联机教程-----------
echo. 创建方：
echo. 运行 Hiper 后，在日志中找到 "cidr":" 和 /7" 之间的IP，如6.11.210.233，然后启动游戏，对局域网开放，
echo. 将 IP 和开放的端口组合成 IP:端口，如 6.11.210.233:25565 ,并将此发送给加入方
echo. 加入方：
echo. 运行 Hiper 后，启动游戏，进入“多人游戏”》“直接连接”，输入创建方发的文本加入即可！
echo. 
echo. 注意，体验版和凭证版式不互通的，联机时请用相同的 Hiper 版本
echo. 在此处可以查看相关常见问题：https://zkitefly.github.io/hiper-d/222.html
echo. ————————————————————
echo. 按任意键运行 Hiper ...
pause>nul

color 2f

echo 以下是 Hiper 运行日志：

cd %appdata%\hiper_launcher-play_minecraft\experience
@echo on
call hiper-windows-i386.exe v
@echo off
color cb

echo. 糟糕，Hiper非正常退出。可能是已超过30分钟试用期，请重新启动。若任然频繁出现，请复制以上日志发送至QQ群：93365639 ，进行反馈。
echo. 按任意键重新启动...
pause>nul
goto experience

::————————————————————

:installTab
@echo off
cls
mode con cols=100 lines=30

color 6f

echo. 
echo. 检测到未安装 Hiper 所需的虚拟网卡，正在安装中...
echo.
echo. 以下是安装程序日志：

cd %appdata%\hiper_launcher-play_minecraft\experience\windows-tap

call FIRST_RUN_THIS_SCRIPT.bat

color 2f

echo. 安装程序已退出，安装成功！
echo. 按任意键继续...
timeout /T 3
goto experience

::————————————————————

:about
@echo off
cls
mode con cols=80 lines=15
echo. ————————————————关于——————————————————
echo.
echo. 本程序为制作简易的，简化了使用 Hiper 使用门槛，使用 Hiper 辅助 Minecraft 联机的工具
echo. 
echo. 代码已在 https://github.com/zkitefly/Hiper-Launcher 上开源，可任意修改传播
echo. 
echo. 本程序基于 Bat To Exe Converter 制作
echo. 
echo. 本程序借鉴了 https://github.com/944390394/hiperapp 部分代码，感谢支持
echo. 
echo. 制作不宜，望能求一口赞赏，感谢您的支持（输入 z 回车开始赞赏）
echo. 
echo. 按两次任意键返回主页
set /p ZC=
if “%zc%”==“z” start https://zkitefly.github.io/zanzhu.png
pause>nul
goto home