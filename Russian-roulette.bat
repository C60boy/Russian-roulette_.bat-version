@echo off
mode con cols=60 lines=30
title ����˹���̶�
color f4
set /a n=1
set /a a=%time:~-1%
set /a q=0
set /p c=����������֮������Ӧ�����ƣ���WeChat.exe��:
echo �ӵ�����
timeout 2 /nobreak>nul
echo ����ת��
timeout 2 /nobreak>nul
echo �ľֿ�ʼ
timeout 2 /nobreak>nul

:B
echo �����ˣ�
timeout 2 /nobreak>nul
if %q% equ %a% (
cls
echo �飡
timeout 2 /nobreak>nul
echo ��G�ˣ�
timeout 2 /nobreak>nul
echo %c%Ӯ����ʤ��
timeout 2 /nobreak>nul
shutdown -s -t 10
exit
pause
) else ( 
	call :A
	)
	pause
echo �ֵ�%c%�ˣ�
timeout 2 /nobreak>nul
if %q% equ %a% (
cls
echo �飡
timeout 2 /nobreak>nul
echo %c%G�ˣ�
timeout 1 /nobreak>nul
taskkill /f /im %c%>nul
pause
echo ��Ӯ����ʤ��
timeout 2 /nobreak>nul
exit
) else ( 
	call :A
	)
	pause
	goto :B
:A
cls
echo ��%n%/10ǹ
timeout 2 /nobreak>nul
echo ����δ����ǹ����
set /a q=%q%+1
set /a n=%n%+1
goto :eof
rem ���ߣ�������