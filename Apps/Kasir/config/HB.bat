@echo off
cls
title Harga Barang ^| By : Raia Shop
set kembali=%~dp0..\kasir.bat
mode con: cols=37 lines=12
echo.
echo  -== Harga Barang ==-
echo.
echo  Foto Copy : Rp.250     /Lbr
echo  Ketikan   : Rp.2.000   /Lbr
echo  Stempel   : Rp.60.000  /Pcs
echo.
echo   [^>] Klik Tombol E Untuk Kembali
choice /c e /n /m "| [>] "
if %errorlevel%==1 call "%kembali%"