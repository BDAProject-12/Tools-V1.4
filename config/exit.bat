@echo off
cls
mode con: cols=27 lines=5
title OS Mini ^| By : BDA Project
set kembali=%~dp0../OS_Mini.bat

echo.
echo   kamu Yakin Untuk Keluar?
echo           (y/n)
choice /c yn /n /m "|  [>] "
if %errorlevel%==1 exit
if %errorlevel%==2 call "%kembali%"