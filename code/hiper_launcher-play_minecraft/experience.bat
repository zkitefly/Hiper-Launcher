:experience
@echo off
cls

mode con cols=100 lines=30

if not exist C:\Windows\System32\drivers\tap0901.sys call %appdata%\hiper_launcher-play_minecraft\installTab.bat

echo. ���ڼ�� Hiper ���£�������ҪһЩʱ��...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\experience -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hiper-windows-i386.exe-update2.log https://gitcode.net/chearlai/hiper/-/raw/master/hiper-windows-i386.exe

cls

color 8b

echo. 
echo. -----------Minecraft �����̳�-----------
echo. ��������
echo. ���� Hiper ������־���ҵ� "cidr":" �� /7" ֮���IP����6.11.210.233��Ȼ��������Ϸ���Ծ��������ţ�
echo. �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.11.210.233:25565 ,�����˷��͸����뷽
echo. ���뷽��
echo. ���� Hiper ��������Ϸ����������˻��������롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴�ɣ�
echo. 
echo. ע�����
echo. - ������ƾ֤���ǲ���ͨ�ģ�����ʱ������ͬ�� Hiper �汾��
echo. - �������ͼ��뷽ƾ֤�費��ͬ��
echo. - ������ Hiper ʱ��Ҫ�ȴ�һ�������ӣ��ڴ��ڼ���ܻ����Ӳ��ˣ����Ժ����ԡ�
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
echo. ����������� Hiper ...
pause>nul

color 2f

echo ������ Hiper ������־��
@echo on
call %appdata%\hiper_launcher-play_minecraft\experience\hiper-windows-i386.exe v
@echo off

color 4f

echo. ��⣬Hiper�������˳����������ѳ���30���������ڣ�����������������ȻƵ�����֣��븴��������־������QQȺ��93365639 �����з�����
echo. ���������������...
pause>nul
goto experience