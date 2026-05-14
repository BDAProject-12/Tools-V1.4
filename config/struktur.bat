@echo off
cls
chcp 65001>nul
title Struktur Folder
set kembali=%~dp0../OS_Mini.bat
mode con: cols=50 lines=33

echo.
echo Tools
echo ├───OS_Mini.bat
echo │
echo ├───config
echo │    ├───Struktur.bat
echo │    ├───jam.bat
echo │    ├───hecking.bat
echo │    ├───exit.bat
echo │    └───matrix.bat
echo │
echo └───Apps
echo      ├───Kasir
echo      │    ├───Kasir.bat
echo      │    └───config
echo      │         ├───HB.bat
echo      │         ├───masuk.bat
echo      │         └───note.txt
echo      ├───calculator
echo      │    ├───Calculator.bat
echo      │    └───config
echo      │         └───masuk.bat
echo      └───Spam_WA
echo           ├───spam_wa.bat
echo           └───config
echo                └───spam.py
echo.
echo.
echo  [^>] Pencet Tombol E Untuk Kembali
choice /c e /n /m "">nul
if %errorlevel%==1 call "%kembali%"