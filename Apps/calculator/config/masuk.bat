@echo off
cls
set kembali=%~dp0..\calculator.bat
title Kasir ^| By : Raia Shop
::mode con: cols: lines:

:menu
cls
echo.
set /p angka="| Angka 1 [>] "
set /p angka1="| Angka 2 [>] "
set /p input="| +|-|*|/ [>] "
set /a ttl=%angka%%input%%angka1%
echo.
echo   Hasil  : %ttl%
echo   [^>] Lanjut Tekan 1, Kembali Tekan E
choice /c 1e /n /m "">nul
if %errorlevel%==1 goto menu
if %errorlevel%==2 "%kembali%"
