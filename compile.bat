@echo off
title Open.MP Server Manager
color 0b

:menu
cls
echo ========================================================
echo                     SERVER MANAGER
echo ========================================================
echo.
echo  [1] Compile Gamemode
echo  [2] Runing Server
echo  [3] Close
echo.
echo ========================================================
set /p pilihan="Masukkan pilihan kamu (1/2/3): "

if "%pilihan%"=="1" goto compile
if "%pilihan%"=="2" goto run
if "%pilihan%"=="3" goto close

echo.
echo Pilihan tidak valid! Silakan masukkan angka 1, 2, atau 3.
pause
goto menu

:compile
cls
echo ========================================================
echo                 PROSES COMPILE...
echo ========================================================
echo.
cd /d "%~dp0"
"qawno\pawncc.exe" -;+ -(+ -\ -Z- "-igamemodes" "-iqawno\include" -d3 -t4 "-ogamemodes\main" "gamemodes\main.pwn"
echo.
echo ========================================================
echo                 COMPILE DONE.
echo ========================================================
pause
goto menu

:run
cls
echo ========================================================
echo               RUNING SERVER...
echo ========================================================
echo.
echo Server sedang berjalan di jendela baru...
echo (Silakan tutup jendela server tersebut untuk kembali ke menu awal)
echo.
cd /d "C:\Users\Administrator\Documents\test gm bagus\dts-roleplay-gamemodes"
start "Open.MP Server" /wait omp-server.exe
goto menu

:close
exit