@echo off

title Hiper Launcher - Play Minecraft

@echo off
cls
mode con cols=100 lines=30

color 6f

echo. 
echo. 检测到未安装 Hiper 所需的虚拟网卡，正在安装中...
echo.
echo. 以下是安装程序日志：

@echo off

cd %appdata%\hiper_launcher-play_minecraft\experience\windows-tap

call FIRST_RUN_THIS_SCRIPT.bat

color 2f

echo. 安装程序已退出，安装成功！
echo. 按任意键继续...

@echo off
timeout /T 3

call %appdata%\hiper_launcher-play_minecraft\experience.bat