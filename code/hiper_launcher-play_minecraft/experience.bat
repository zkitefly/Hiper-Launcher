@echo off
cls

mode con cols=100 lines=40

if not exist C:\Windows\System32\drivers\tap0901.sys call %appdata%\hiper_launcher-play_minecraft\installTab.bat

echo. ���ڼ�� Hiper ���£�������ҪһЩʱ��...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\experience -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hiper-windows-i386.exe-update2.log https://gitcode.net/to/hiper/-/raw/master/hiper-windows-i386.exe

goto run

:run

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
echo. - ������ Hiper ʱ������Ҫ�ȴ�һ������ӵĻ���ʱ�䣬�ڴ��ڼ���ܻ����Ӳ��ˣ���ȴ���
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
echo. ����������� Hiper ...
pause>nul

color 2f

echo ������ Hiper ������־��

cd %appdata%\hiper_launcher-play_minecraft\experience\

@echo on
call hiper-windows-i386.exe v
@echo off

color 4f

echo. ��⣬Hiper�������˳����п������ѳ���30���������ڣ�����������������ȻƵ�����֣��븴��������־������QQȺ��93365639 �����з�����
echo. ���������������...
pause>nul
goto run