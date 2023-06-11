@echo off
cd /d "%~dp0"
title MENU

:menu
cls
ECHO. [1]push origin [2]clean [3]server
ECHO.
echo.select£º
set ID="q"
set /p ID="> "
if "%id%"=="1" goto cmd1
if "%id%"=="2" goto cmd2
if "%id%"=="3" goto cmd3
if "%id%"=="q" goto end

:end 
exit

:cmd1
git push -u origin main
goto menu


:cmd2
hexo clean
goto menu


:cmd3
hexo server
goto menu