:token
@echo off
cls
mode con cols=100 lines=30

echo. ���ڼ�� Hiper ���£�������ҪһЩʱ��...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\token -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hpr.exe-update.log https://gitcode.net/to/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\token -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hpr_env.exe-update1.log https://gitcode.net/to/hiper/-/raw/plus/windows/32bit/hpr_env.exe

cls

color 8b

echo. 
echo. -----------Minecraft �����̳�-----------
echo. ��������
echo. ���� Hiper ������־���ҵ� CORE ipv4[ �� ] ֮���IP����6.0.0.1��Ȼ��������Ϸ���Ծ��������ţ�
echo. �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.0.0.1:25565 ,�����˷��͸����뷽��
echo. ���뷽��
echo. ���� Hiper ��������Ϸ����������˻��������롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴��
echo. 
echo. ע�����
echo. - ������ƾ֤���ǲ���ͨ�ģ�����ʱ������ͬ�� Hiper �汾��
echo. - ��ʹ�õ�ƾ֤��Ҫ�����˲�һ����
echo. - �������ͼ��뷽ƾ֤�費��ͬ��
echo. - ������ Hiper ʱ������Ҫ�ȴ�һ������ӵĻ���ʱ�䣬�ڴ��ڼ���ܻ����Ӳ��ˣ���ȴ���
echo. �ڴ˴����Բ鿴��س������⣺https://zkitefly.github.io/hiper-d/222.html
echo. ����������������������������������������
set /p tk=������ Hiper ƾ֤�س�������

color 2f

echo. ������ Hiper ������־��

cd %appdata%\hiper_launcher-play_minecraft\token

@echo on
hpr.exe -t "%tk%"
@echo off

color 4F

echo. ��⣬Hiper �������˳����븴��������־������QQȺ��93365639 �����з�����
echo. ���������������...
pause>nul

goto token
