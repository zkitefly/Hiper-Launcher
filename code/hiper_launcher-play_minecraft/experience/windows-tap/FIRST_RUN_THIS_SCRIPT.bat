@echo off
echo. ------------------------------------
echo. =         ���ڰ�װ��������         =
echo. ------------------------------------
@echo on
@rem Add a new TAP virtual ethernet adapter

cd /d %~dp0

tap_install.exe install OemVista.inf tap0901


