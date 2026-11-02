@echo off
chcp 65001 >nul
title Lahmacun House - Sunucu Durdurucu

echo ======================================================================
echo           LAHMACUN HOUSE - SUNUCU GÜVENLİ DURDURMA
echo ======================================================================
echo.

echo Port 3000 üzerinde çalışan Lahmacun House süreci aranıyor...

for /f "tokens=5" %%a in ('netstat -aon ^| findstr :3000') do (
    set PID=%%a
    if defined PID (
        echo Bulunan İşlem (PID: %%a) sonlandırılıyor...
        taskkill /F /PID %%a >nul 2>&1
    )
)

echo.
echo Lahmacun House sunucusu başarıyla durduruldu.
echo.
pause
