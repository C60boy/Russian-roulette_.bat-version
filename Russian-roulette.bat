@echo off
mode con cols=60 lines=30
title 俄罗斯轮盘赌
color f4
set /a n=1
set /a a=%time:~-1%
set /a q=0
set /p c=请输入你与之决斗的应用名称（如WeChat.exe）:
echo 子弹上膛
timeout 2 /nobreak>nul
echo 轮盘转动
timeout 2 /nobreak>nul
echo 赌局开始
timeout 2 /nobreak>nul

:B
echo 该你了！
timeout 2 /nobreak>nul
if %q% equ %a% (
cls
echo 砰！
timeout 2 /nobreak>nul
echo 你G了！
timeout 2 /nobreak>nul
echo %c%赢得了胜利
timeout 2 /nobreak>nul
shutdown -s -t 10
exit
pause
) else ( 
	call :A
	)
	pause
echo 轮到%c%了！
timeout 2 /nobreak>nul
if %q% equ %a% (
cls
echo 砰！
timeout 2 /nobreak>nul
echo %c%G了！
timeout 1 /nobreak>nul
taskkill /f /im %c%>nul
pause
echo 你赢得了胜利
timeout 2 /nobreak>nul
exit
) else ( 
	call :A
	)
	pause
	goto :B
:A
cls
echo 第%n%/10枪
timeout 2 /nobreak>nul
echo 硝烟未起，手枪交换
set /a q=%q%+1
set /a n=%n%+1
goto :eof
rem 作者：鱼宇虞