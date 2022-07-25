@echo off
echo. ------------------------------------
echo. =         正在安装虚拟网卡         =
echo. ------------------------------------
@echo on
@rem Add a new TAP virtual ethernet adapter

cd /d %~dp0

tap_install.exe install OemVista.inf tap0901


