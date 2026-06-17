@echo off
title Server Manager - by BngWiro
color 0F

:menu
cls
echo ========================================================
echo                  SERVER MANAGER
echo                 Developer: BngWiro
echo ========================================================
echo.
echo  [1] Compile Gamemode (pawncc)
echo  [2] Run Server
echo  [3] Exit
echo.
echo ========================================================
set /p pilihan=" Select option (1/2/3): "

if "%pilihan%"=="1" goto compile
if "%pilihan%"=="2" goto run
if "%pilihan%"=="3" goto close

goto menu

:compile
cls
echo ========================================================
echo                 COMPILING GAMEMODE...
echo ========================================================
echo.
cd /d "%~dp0"
"qawno\pawncc.exe" -;+ -(+ -\ -Z- "-igamemodes" "-iqawno\include" -d3 -t4 "-ogamemodes\main" "gamemodes\main.pwn"
echo.
echo ========================================================
echo                 COMPILATION FINISHED
echo ========================================================
pause
goto menu

:run
cls
echo ========================================================
echo                 STARTING SERVER
echo ========================================================
echo.
echo [INFO] Server is running in a separate console window.
echo [INFO] Close the server window to return to this menu.
echo.
cd /d "%~dp0"
start "Open.MP Server (BngWiro)" /wait omp-server.exe
goto menu

:close
exit
