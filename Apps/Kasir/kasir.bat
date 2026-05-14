@echo off
cls
chcp 65001>nul
title Kasir ^| By : Raia Shop
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set ESC=%%b
set kembali=%~dp0..\..\OS_Mini.bat
set masuk=%~dp0config\Masuk.bat
set HB=%~dp0config\HB.bat
mode con: cols=68 lines=18

:menu
echo                                          ^|
echo %ESC%[38;5;196m   ██╗  ██╗ █████╗ ███████╗██╗██████╗%ESC%[0m    ^|  Welcome To Kasir
echo %ESC%[38;5;202m   ██║ ██╔╝██╔══██╗██╔════╝██║██╔══██╗%ESC%[0m   ^|
echo %ESC%[38;5;208m   █████╔╝ ███████║███████╗██║██████╔╝%ESC%[0m   ^| * Kasir  : Computer2
echo %ESC%[38;5;214m   ██╔═██╗ ██╔══██║╚════██║██║██╔══██╗%ESC%[0m   ^| * Time   : %time%
echo %ESC%[38;5;220m   ██║  ██╗██║  ██║███████║██║██║  ██║%ESC%[0m   ^| * Date   : %date%
echo %ESC%[38;5;226m   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝%ESC%[0m   ^|
echo ====================================================================
echo.
echo   [1] Masuk
echo   [2] Kembali
echo   [3] Lihat Harga Barang
echo   [E] Keluar
echo.
choice /c 123e /n /m "| [>] "
if %errorlevel%==1 call "%masuk%"
if %errorlevel%==2 call "%kembali%"
if %errorlevel%==3 call "%HB%"
if %errorlevel%==4 exit
