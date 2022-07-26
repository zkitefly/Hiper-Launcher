:token
@echo off
cls
mode con cols=100 lines=30

echo. 正在检查 Hiper 更新，可能需要一些时间...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\token -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hpr.exe-update.log https://gitcode.net/to/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\token -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hpr_env.exe-update1.log https://gitcode.net/to/hiper/-/raw/plus/windows/32bit/hpr_env.exe

cls

color 8b

echo. 
echo. -----------Minecraft 联机教程-----------
echo. 创建方：
echo. 运行 Hiper 后，在日志中找到 CORE ipv4[ 和 ] 之间的IP，如6.0.0.1，然后启动游戏，对局域网开放，
echo. 将 IP 和开放的端口组合成 IP:端口，如 6.0.0.1:25565 ,并将此发送给加入方；
echo. 加入方：
echo. 运行 Hiper 后，启动游戏（需非离线账户），进入“多人游戏”》“直接连接”，输入创建方发的文本加入即可
echo. 
echo. 注意事项：
echo. - 体验版和凭证版是不互通的，联机时请用相同的 Hiper 版本；
echo. - 你使用的凭证需要与他人不一样；
echo. - 创建方和加入方凭证需不相同；
echo. - 在启动 Hiper 时可能需要等待一至五分钟的缓冲时间，在此期间可能会连接不了，请等待！
echo. 在此处可以查看相关常见问题：https://zkitefly.github.io/hiper-d/222.html
echo. ————————————————————
set /p tk=请输入 Hiper 凭证回车启动：

color 2f

echo. 以下是 Hiper 运行日志：

cd %appdata%\hiper_launcher-play_minecraft\token

@echo on
hpr.exe -t "%tk%"
@echo off

color 4F

echo. 糟糕，Hiper 非正常退出。请复制以上日志发送至QQ群：93365639 ，进行反馈。
echo. 按任意键重新启动...
pause>nul

goto token
