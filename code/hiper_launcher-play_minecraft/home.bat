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

cd %appdata%\hiper_launcher-play_minecraft\

echo. 欢迎使用 Hiper Launcher - Play Minecraft v1.2
echo. 回车可查看本程序关于页面
echo. 凭证可在 https://mcer.cn/shop 中购买，可加入QQ群：93365639，寻求帮助
echo. 输入 0 回车即运行 Hiper 30 分钟体验版本
echo. 
echo. 输入 1 回车即运行 Hiper 凭证版本
set /p mm=请输入 Hiper 启动模式：
if “%mm%”==“0” call experience.bat
if “%mm%”==“1” call token.bat
if “%mm%”==“i” call installTab.bat

:about
@echo off
cls
mode con cols=80 lines=17
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