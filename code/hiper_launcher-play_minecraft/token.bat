@echo off
cls

mode con cols=105 lines=43

echo. ���ڼ�� Hiper ���£�������ҪһЩʱ��...

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\token -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hpr.exe-update.log https://gitcode.net/to/hiper/-/raw/plus/windows/32bit/hpr.exe

%appdata%\hiper_launcher-play_minecraft\wget.exe  -q -N -P %appdata%\hiper_launcher-play_minecraft\token -S -T 2 -o %appdata%\hiper_launcher-play_minecraft\hpr_env.exe-update1.log https://gitcode.net/to/hiper/-/raw/plus/windows/32bit/hpr_env.exe

goto run

:run
cls

color 8b

echo. -----------------------------------------= Minecraft �����̳� =----------------------------------------
echo. =                                                ��������                                             =
echo. =       ���� Hiper ������־���ҵ� CORE ipv4[ �� ] ֮���IP����6.0.0.1��Ȼ��������Ϸ���Ծ��������ţ� =
echo. =               �� IP �Ϳ��ŵĶ˿���ϳ� IP:�˿ڣ��� 6.0.0.1:25565 ,�����˷��͸����뷽��              =
echo. =                                                ���뷽��                                             =
echo. = ���� Hiper ��������Ϸ����������˻��������롰������Ϸ������ֱ�����ӡ������봴���������ı����뼴��!=
echo. ----------------------------------------------= ע������ =---------------------------------------------
echo. -                      ������ƾ֤���ǲ���ͨ�ģ�����ʱ������ͬ�� Hiper �汾��                        =
echo. =                                     �������ͼ��뷽ƾ֤�費��ͬ��                                    =
echo. =          ������ Hiper ʱ������Ҫ�ȴ�һ������ӵĻ���ʱ�䣬�ڴ��ڼ���ܻ����Ӳ��ˣ���ȴ���          =
echo. -------------------------------------------------------------------------------------------------------
echo. =          ���� Hiper ƾ֤�����Խ�࣬����ʹ�� Hiper ƾ֤�����ҵĻ����ٶȾͻ����ȼ��١�           =
echo. =                               ��ˣ����� Hiper ƾ֤�����Ϊ�����������                             =
echo. =                       Hiper ƾ֤���ʹ����������������������ʹ��Ӳ����CPU  
                     =
echo. -------------------------------------= �ڴ˴����Բ鿴��س������� =------------------------------------
echo. =                             https://zkitefly.github.io/hiper-d/222.html                             =
echo. -------------------------------------------------------------------------------------------------------
set /p tk=������ Hiper ƾ֤�س�������

if "%tk%"=="" goto run

color 2f

echo ------------------------------------------ Hiper ������־ ----------------------------------------------
cd %appdata%\hiper_launcher-play_minecraft\token

@echo on
hpr.exe -t "%tk%"
@echo off
echo --------------------------------------------------------------------------------------------------------

color 4F

echo. -------------------------------------------------------------------------------------------------------
echo. =               ��⣬Hiper �������˳����븴��������־������QQȺ��93365639 �����з�����               =
echo. -------------------------------------------------------------------------------------------------------
echo. ���������������...
pause>nul

goto run
