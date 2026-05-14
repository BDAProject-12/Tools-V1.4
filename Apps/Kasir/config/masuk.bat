@echo off
cls
chcp 65001>nul
mode con: cols=68 lines=14
title Kasir ^| By : Raia Shop
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set ESC=%%b
set kembali=%~dp0..\kasir.bat

:menu
cls
echo                                          ^|
echo %ESC%[38;5;196m   ██╗  ██╗ █████╗ ███████╗██╗██████╗%ESC%[0m    ^|  Welcome To Kasir
echo %ESC%[38;5;202m   ██║ ██╔╝██╔══██╗██╔════╝██║██╔══██╗%ESC%[0m   ^|
echo %ESC%[38;5;208m   █████╔╝ ███████║███████╗██║██████╔╝%ESC%[0m   ^| * Kasir  : Computer2
echo %ESC%[38;5;214m   ██╔═██╗ ██╔══██║╚════██║██║██╔══██╗%ESC%[0m   ^| * Time   : %time%
echo %ESC%[38;5;220m   ██║  ██╗██║  ██║███████║██║██║  ██║%ESC%[0m   ^| * Date   : %date%
echo %ESC%[38;5;226m   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝%ESC%[0m   ^|
echo ====================================================================
echo.
echo   [^>] Banyak Barang? (1-9 dan E Kembali)
choice /c 123456789e /n /m "| [>] "
if %errorlevel%==1 goto 1
if %errorlevel%==2 goto 2
if %errorlevel%==3 goto 3
if %errorlevel%==4 goto 4
if %errorlevel%==5 goto 5
if %errorlevel%==6 goto 6
if %errorlevel%==7 goto 7
if %errorlevel%==8 goto 8
if %errorlevel%==9 goto 9
if %errorlevel%==10 call "%kembali%"

:1
cls
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%ttl%>>note.txt
echo.
echo Total : Rp.%ttl%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:2
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
set /a ttl1=%HS1%*%JML1%
set /a TTL=%ttl%+%ttl1%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:3
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
set /a ttl1=%HS1%*%JML1%
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
set /a TTL=%ttl%+%ttl1%+%ttl2%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:4
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:5
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
cls
echo  -== Barang 5 ==-
echo.
set /p NB4="| Nama Barang   : "
set /p HS4="| Harga Satuan  : Rp."
set /p JML4"| Jumlah Barang : "
set /a ttl4=%HS4%*%JML4%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%+%ttl4%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo  %NB4%   Rp.%HS4% x%JML4%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:6
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
cls
echo  -== Barang 5 ==-
echo.
set /p NB4="| Nama Barang   : "
set /p HS4="| Harga Satuan  : Rp."
set /p JML4"| Jumlah Barang : "
set /a ttl4=%HS4%*%JML4%
cls
echo  -== Barang 6 ==-
echo.
set /p NB5="| Nama Barang   : "
set /p HS5="| Harga Satuan  : Rp."
set /p JML5"| Jumlah Barang : "
set /a ttl5=%HS5%*%JML5%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%+%ttl4%+%ttl5%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo  %NB4%   Rp.%HS4% x%JML4%>>note.txt
echo  %NB5%   Rp.%HS5% x%JML5%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:7
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
cls
echo  -== Barang 5 ==-
echo.
set /p NB4="| Nama Barang   : "
set /p HS4="| Harga Satuan  : Rp."
set /p JML4"| Jumlah Barang : "
set /a ttl4=%HS4%*%JML4%
cls
echo  -== Barang 6 ==-
echo.
set /p NB5="| Nama Barang   : "
set /p HS5="| Harga Satuan  : Rp."
set /p JML5"| Jumlah Barang : "
set /a ttl5=%HS5%*%JML5%
cls
echo  -== Barang 7 ==-
echo.
set /p NB6="| Nama Barang   : "
set /p HS6="| Harga Satuan  : Rp."
set /p JML6"| Jumlah Barang : "
set /a ttl6=%HS6%*%JML6%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%+%ttl4%+%ttl5%+%ttl6%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo  %NB4%   Rp.%HS4% x%JML4%>>note.txt
echo  %NB5%   Rp.%HS5% x%JML5%>>note.txt
echo  %NB6%   Rp.%HS6% x%JML6%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:8
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
cls
echo  -== Barang 5 ==-
echo.
set /p NB4="| Nama Barang   : "
set /p HS4="| Harga Satuan  : Rp."
set /p JML4"| Jumlah Barang : "
set /a ttl4=%HS4%*%JML4%
cls
echo  -== Barang 6 ==-
echo.
set /p NB5="| Nama Barang   : "
set /p HS5="| Harga Satuan  : Rp."
set /p JML5"| Jumlah Barang : "
set /a ttl5=%HS5%*%JML5%
cls
echo  -== Barang 7 ==-
echo.
set /p NB6="| Nama Barang   : "
set /p HS6="| Harga Satuan  : Rp."
set /p JML6"| Jumlah Barang : "
set /a ttl6=%HS6%*%JML6%
cls
echo  -== Barang 8 ==-
echo.
set /p NB7="| Nama Barang   : "
set /p HS7="| Harga Satuan  : Rp."
set /p JML7"| Jumlah Barang : "
set /a ttl7=%HS7%*%JML7%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%+%ttl4%+%ttl5%+%ttl6%+%ttl7%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo  %NB4%   Rp.%HS4% x%JML4%>>note.txt
echo  %NB5%   Rp.%HS5% x%JML5%>>note.txt
echo  %NB6%   Rp.%HS6% x%JML6%>>note.txt
echo  %NB7%   Rp.%HS7% x%JML7%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu


:8
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
cls
echo  -== Barang 5 ==-
echo.
set /p NB4="| Nama Barang   : "
set /p HS4="| Harga Satuan  : Rp."
set /p JML4"| Jumlah Barang : "
set /a ttl4=%HS4%*%JML4%
cls
echo  -== Barang 6 ==-
echo.
set /p NB5="| Nama Barang   : "
set /p HS5="| Harga Satuan  : Rp."
set /p JML5"| Jumlah Barang : "
set /a ttl5=%HS5%*%JML5%
cls
echo  -== Barang 7 ==-
echo.
set /p NB6="| Nama Barang   : "
set /p HS6="| Harga Satuan  : Rp."
set /p JML6"| Jumlah Barang : "
set /a ttl6=%HS6%*%JML6%
cls
echo  -== Barang 8 ==-
echo.
set /p NB7="| Nama Barang   : "
set /p HS7="| Harga Satuan  : Rp."
set /p JML7"| Jumlah Barang : "
set /a ttl7=%HS7%*%JML7%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%+%ttl4%+%ttl5%+%ttl6%+%ttl7%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo  %NB4%   Rp.%HS4% x%JML4%>>note.txt
echo  %NB5%   Rp.%HS5% x%JML5%>>note.txt
echo  %NB6%   Rp.%HS6% x%JML6%>>note.txt
echo  %NB7%   Rp.%HS7% x%JML7%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu

:9
cls
echo  -== Barang 1 ==-
echo.
set /p NB="| Nama Barang   : "
set /p HS="| Harga Satuan  : Rp."
set /p JML="| Jumlah Barang : "
set /a ttl=%HS%*%JML%
cls
echo  -== Barang 2 ==-
echo.
set /p NB1="| Nama Barang   : "
set /p HS1="| Harga Satuan  : Rp."
set /p JML1="| Jumlah Barang : "
cls
echo  -== Barang 3 ==-
echo.
set /p NB2="| Nama Barang   : "
set /p HS2="| Harga Satuan  : Rp."
set /p JML2="| Jumlah Barang : "
set /a ttl2=%HS2%*%JML2%
cls
echo  -== Barang 4 ==-
echo.
set /p NB3="| Nama Barang   : "
set /p HS3="| Harga Satuan  : Rp."
set /p JML3="| Jumlah Barang : "
set /a ttl3=%HS3%*%JML3%
cls
echo  -== Barang 5 ==-
echo.
set /p NB4="| Nama Barang   : "
set /p HS4="| Harga Satuan  : Rp."
set /p JML4"| Jumlah Barang : "
set /a ttl4=%HS4%*%JML4%
cls
echo  -== Barang 6 ==-
echo.
set /p NB5="| Nama Barang   : "
set /p HS5="| Harga Satuan  : Rp."
set /p JML5"| Jumlah Barang : "
set /a ttl5=%HS5%*%JML5%
cls
echo  -== Barang 7 ==-
echo.
set /p NB6="| Nama Barang   : "
set /p HS6="| Harga Satuan  : Rp."
set /p JML6"| Jumlah Barang : "
set /a ttl6=%HS6%*%JML6%
cls
echo  -== Barang 8 ==-
echo.
set /p NB7="| Nama Barang   : "
set /p HS7="| Harga Satuan  : Rp."
set /p JML7"| Jumlah Barang : "
set /a ttl7=%HS7%*%JML7%
echo  -== Barang 8 ==-
echo.
set /p NB8="| Nama Barang   : "
set /p HS8="| Harga Satuan  : Rp."
set /p JML8"| Jumlah Barang : "
set /a ttl8=%HS7%*%JML87%
set /a TTL=%ttl%+%ttl1%+%ttl2%+%ttl3%+%ttl4%+%ttl5%+%ttl6%+%ttl7%+%ttl8%
cls
echo.
echo        Raia Shop>note.txt
echo ==============================>>note.txt
echo  Time  : %time%>>note.txt
echo  Date  : %date%>>note.txt
echo  Kasir : Computer2>>note.txt
echo ==============================>>note.txt
echo  %NB%   Rp.%HS% x%JML%>>note.txt
echo  %NB1%   Rp.%HS1% x%JML1%>>note.txt
echo  %NB2%   Rp.%HS2% x%JML2%>>note.txt
echo  %NB3%   Rp.%HS3% x%JML3%>>note.txt
echo  %NB4%   Rp.%HS4% x%JML4%>>note.txt
echo  %NB5%   Rp.%HS5% x%JML5%>>note.txt
echo  %NB6%   Rp.%HS6% x%JML6%>>note.txt
echo  %NB7%   Rp.%HS7% x%JML7%>>note.txt
echo  %NB8%   Rp.%HS8% x%JML8%>>note.txt
echo ==============================>>note.txt
echo  Total     : Rp.%TTL%>>note.txt
echo.
echo Total : Rp.%TTL%
choice /c yn /n /m "Cetak Struk? (y/n) : "
if %errorlevel%==1 notepad /p note.txt & goto menu
if %errorlevel%==2 goto menu