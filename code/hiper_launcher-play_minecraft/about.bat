@echo off
cls

color df
echo.-------------------------------------------关于-------------------------------------------
echo.                                                                                       
echo.   本程序为制作简易的，简化了使用 Hiper 使用门槛，使用 Hiper 辅助 Minecraft 联机的工具   
echo.       代码已在 https://github.com/zkitefly/Hiper-Launcher 上开源，可任意修改传播        
echo.                           本程序基于 Bat To Exe Converter 制作                          
echo.         本程序借鉴了 https://github.com/944390394/hiperapp 部分代码，感谢支持           
echo.              制作不宜，望能求一口赞赏，感谢您的支持（输入 z 回车开始赞赏）              
echo.                                                                                         
echo.------------------------------------------------------------------------------------------
echo. 
echo. 按回车返回主页
set /p ZC=
if “%zc%”==“z” start https://zkitefly.github.io/zanzhu.png
if “%zc%”==“” call %appdata%\hiper_launcher-play_minecraft\home.bat
pause>nul

call %appdata%\hiper_launcher-play_minecraft\home.bat