@echo off
cls
chcp 65001>nul

set exit=%~dp0config\exit.bat
set kasir=%~dp0Apps\Kasir\kasir.bat
set jam=%~dp0config\jam.bat
set calculator=%~dp0Apps\calculator\calculator.bat
set hecking=%~dp0config\hecking.bat
set struktur=%~dp0config\struktur.bat

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set ESC=%%b
mode con: cols=82 lines=17
title OS Mini ^| By : Raia Shop

:menu
echo                                                       ^|
echo %ESC%[38;5;196m     ██████╗ ███████╗    ███╗   ███╗██╗███╗   ██╗██╗%ESC%[0m  ^|    Welcome To OS Mini
echo %ESC%[38;5;202m    ██╔═══██╗██╔════╝    ████╗ ████║██║████╗  ██║██║%ESC%[0m  ^|
echo %ESC%[38;5;208m    ██║   ██║███████╗    ██╔████╔██║██║██╔██╗ ██║██║%ESC%[0m  ^| * Time   : %time%
echo %ESC%[38;5;214m    ██║   ██║╚════██║    ██║╚██╔╝██║██║██║╚██╗██║██║%ESC%[0m  ^| * Date   : %date%
echo %ESC%[38;5;220m    ╚██████╔╝███████║    ██║ ╚═╝ ██║██║██║ ╚████║██║%ESC%[0m  ^| * Author : Raia Shop
echo %ESC%[38;5;226m     ╚═════╝ ╚══════╝    ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝%ESC%[0m  ^|
echo ==================================================================================
echo.
echo   [1] Kasir
echo   [2] Calculator
echo   [3] Jam Dan Tanggal
echo   [4] Struktur Folder
echo   [E] Exit
echo.
choice /c 12340e /n /m "| [>] "
if %errorlevel%==1 call "%kasir%"
if %errorlevel%==2 call "%calculator%"
if %errorlevel%==3 call "%jam%"
if %errorlevel%==4 call "%struktur%"
if %errorlevel%==5 call "%hecking%"
if %errorlevel%==6 call "%exit%" 
