@echo off
set kembali=%~dp0..\OS_Mini.bat
title Jam dan Tanggal ^| By : Raia Shop
mode con: cols=28 lines=7

echo.
echo  -Time : %time%
echo  -Date : %date%
echo.
echo  [^>] Tekan E Untuk Kembali
choice /c e /n /m "" >nul
if %errorlevel%==1 call "%kembali%"