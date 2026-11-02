@echo off
chcp 65001 >nul
title Lahmacun House - Kurumsal Web Sitesi ve Genel Merkez Platformu

echo ======================================================================
echo           LAHMACUN HOUSE - GENEL MERKEZ YÖNETİM PLATFORMU
echo ======================================================================
echo.

:: 1. Node.js Kontrolü
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [HATA] Node.js sisteminizde kurulu bulunamadı!
    echo Lütfen https://nodejs.org adresinden Node.js indirip kurunuz.
    pause
    exit /b 1
)

:: 2. Ortam Değişkenleri (.env) Kontrolü
if not exist .env (
    echo [.env] Dosyası bulunamadı, .env.example dosyasından kopyalanıyor...
    copy .env.example .env >nul
)

:: 3. Bağımlılıkların (node_modules) Kontrolü
if not exist node_modules (
    echo [KURULUM] Bağımlılıklar yükleniyor, lütfen bekleyiniz...
    call npm.cmd install
    if %errorlevel% neq 0 (
        echo [HATA] Paket kurulumunda hata oluştu!
        pause
        exit /b 1
    )
)

:: 4. Veritabanı ve Prisma Kontrolü
echo [VERİTABANI] Veritabanı şeması ve tablolar doğrulanıyor...
call npx.cmd prisma db push >nul 2>&1

:: 5. İlk Tohumlama (Seed) Kontrolü
if not exist prisma\dev.db (
    echo [SEED] Doğrulanmış şubeler, menü ve admin kullanıcısı oluşturuluyor...
    call node prisma\seed.js
)

echo.
echo ======================================================================
echo  Sistem başarıyla hazırlandı!
echo  Web Sitesi:          http://localhost:3000
echo  Genel Merkez Paneli: http://localhost:3000/admin
echo  Süper Admin Girişi:  admin@lahmacunhouse.tr / LahmacunHouse2026!
echo ======================================================================
echo.

:: 6. Tarayıcıyı Aç
start http://localhost:3000

:: 7. Sunucuyu Başlat
echo [BAŞLATILIYOR] Lahmacun House sunucusu başlatılıyor (Ctrl+C ile durdurulabilir)...
call npm.cmd run dev
