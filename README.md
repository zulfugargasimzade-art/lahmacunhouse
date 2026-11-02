# LAHMACUN HOUSE – KURUMSAL WEB SİTESİ VE GENEL MERKEZ YÖNETİM PLATFORMU

> **"Anadolu'nun Lezzeti, Lahmacun House'un Ustalığıyla."**  
> Resmi Referans: [https://www.lahmacunhouse.tr/](https://www.lahmacunhouse.tr/)  
> Çatı Kuruluş: **OZN Gıda** | Tedarik & Üretim Partneri: **POEL Tarım**

---

## 📌 Proje Genel Bakışı

Bu platform; **Lahmacun House** markası için sıfırdan geliştirilmiş, yüksek performanslı, mobil uyumlu, kurumsal kimliği yansıtan bir **ziyaretçi web sitesi** ve Türkiye genelindeki tüm şubelerin tek bir merkezden yönetildiği **Genel Merkez Franchise Yönetim Platformu**'dur.

Sistemde hiçbir bilgi (şubeler, menü, fiyatlar, rezervasyonlar, slider, haberler, sayfalar vb.) sabit kodlanmamış olup **100% veritabanı (Prisma ORM + SQLite)** üzerinden dinamik olarak çalışmaktadır.

---

## 🚀 Hızlı Başlangıç (Windows - Tek Tıkla Çalıştırma)

Projeyi Windows ortamında hiçbir karmaşık komut girmeden çalıştırmak için hazırlanan batch dosyalarını kullanabilirsiniz:

### 1. Sistemi Başlatma
Proje kök dizinindeki **`start.bat`** dosyasına çift tıklayın veya komut satırından çalıştırın:
```cmd
start.bat
```
*Bu komut gerekli bağımlılıkları kontrol eder, veritabanını günceller ve üretim modunda Next.js sunucusunu **http://localhost:3000** adresinde başlatır.*

### 2. Sistemi Durdurma
Arka planda veya terminalde çalışan sunucuyu kapatmak için **`stop.bat`** dosyasını çalıştırın:
```cmd
stop.bat
```

---

## 🔑 Varsayılan Yönetici ve Personel Giriş Bilgileri

Yönetim paneline erişmek için: **`http://localhost:3000/admin`** veya **`http://localhost:3000/admin/login`**

| Rol | E-Posta | Şifre | Yetki Kapsamı |
| :--- | :--- | :--- | :--- |
| **Süper Admin** | `admin@lahmacunhouse.tr` | `LahmacunHouse2026!` | Tüm sistem ayarları, şube açma/kapama, kullanıcılar, ürünler, rezervasyonlar ve denetim kayıtları |
| **Genel Merkez Personeli** | `merkez@lahmacunhouse.tr` | `LahmacunMerkez2026!` | Menü yönetimi, sliderlar, haberler, galeri, bayilik başvuruları ve rezervasyon kontrolü |
| **Şube Yöneticisi (Batıkent)** | `batikent@lahmacunhouse.tr` | `Batikent2026!` | Yalnızca kendi şubesinin rezervasyonları, masa kapasitesi ve çalışma saatleri |

*(Not: Giriş ekranında hızlı test yapabilmeniz için tek tıkla kimlik bilgilerini dolduran pratik butonlar mevcuttur.)*

---

## 🌟 Temel Modüller ve Özellikler

### 1. Ziyaretçi Portalı (Public Web Sitesi)
- **Kurumsal Tasarım:** Lahmacun House resmi kırmızı (`#BA1A1A`), sıcak krem (`#FFFBF5`), beyaz ve antrasit renk paleti, lüks franchise standartlarında tipografi ve geçiş animasyonları.
- **Hero Slider:** Yönetim panelinden güncellenen, masaüstü/mobil uyumlu, eylem çağrılı (CTA) tam genişlik profesyonel slider.
- **İnteraktif Türkiye Haritası:** 81 ili ve şubeleri gösteren SVG tabanlı interaktif harita; il/ilçe bazında filtreleme ve şube kartları.
- **Doğrulanmış 17 Şube:** Ankara (Batıkent, Sincan, Etimesgut, Ulus, Demetevler, Gölbaşı, Hüseyingazi, Tunalı Hilmi, Batı Bulvarı), Trabzon (Ortahisar, Rubenis AVM, Yomra), Erzurum, Kars, İstanbul (Kavacık), Eskişehir ve Antalya şubeleri gerçek adres, telefon, WhatsApp ve harita koordinatlarıyla entegre.
- **Dijital Menü:** Kategorilere göre filtrelenebilir (Lahmacunlar, Pideler, Yan Ürünler, Tatlılar, İçecekler, Menüler), arama yapılabilir, merkezden fiyat gösterimi açılıp kapatılabilir.
- **Çakışma Korumalı Rezervasyon:** Şubenin masa ve saat kapasitesini kontrol eden, aynı masaya mükerrer randevuyu engelleyen ve müşteriye benzersiz takip kodu (örn. `LH-2026-XXXX`) veren rezervasyon motoru.
- **Rezervasyon Sorgulama:** Müşterilerin telefon numarası veya rezervasyon kodu ile anlık durum (Beklemede, Onaylandı, vb.) kontrol edebileceği sayfa (`/rezervasyon-sorgula`).
- **Bayilik (Franchise) Başvuru Formu:** Yatırım bütçesi, meslek tecrübesi, hedef lokasyon bilgileriyle kurumsal başvuru portalı.
- **Haberler & Galeri:** Kategorili fotoğraf galerisi ve SEO uyumlu haber/duyuru detay sayfaları.
- **Kurumsal & Yasal:** Hakkımızda (OZN Gıda ve POEL Tarım hikayesi), İletişim, KVKK Metni, Gizlilik Politikası, Çerez Politikası ve dinamik çerez bildirim çubuğu.
- **Sürekli İletişim:** Sayfanın sağ altında resmi WhatsApp hattına (`0501 156 06 93`) doğrudan bağlanan kayan buton.

### 2. Genel Merkez SaaS Yönetim Paneli (`/admin`)
Modern 16 bölümlü sidebar navigasyonu ve RBAC yetkilendirmesi:
1. **Dashboard (Genel Bakış):** 8 adet canlı KPI metriği (Toplam şube, aktif şube, toplam ürün, bekleyen/onaylanan rezervasyonlar, yeni bayilik başvuruları), haftalık rezervasyon dağılım grafiği, son işlemler ve son rezervasyonlar.
2. **Şube Yönetimi:** Şube ekleme, düzenleme, pasife alma, masa sayısı, açılış-kapanış saatleri, WhatsApp, telefon, enlem-boylam koordinatları ve rezervasyon kabul ayarları.
3. **Ürün Yönetimi:** Ürün adı, kategori, fiyat, indirimli fiyat, öne çıkarılan ürün seçimi, kalori, porsiyon, aktif/pasif ve görsel yönetimi.
4. **Kategori Yönetimi:** Menü kategorileri sıralama ve durum kontrolü.
5. **Slider Yönetimi:** Sıralı slider kartları, başlık, alt başlık, buton bağlantıları ve aktiflik tarihleri.
6. **Rezervasyon Yönetimi:** Şube ve duruma göre filtreleme, anında "Onayla / Reddet / Tamamla" butonları, müşteri detayları ve masa ataması.
7. **Bayilik Başvuruları:** Gelen franchise adaylarının bütçe ve tecrübe incelemesi, durum güncelleme (İnceleniyor, Görüşüldü, Onaylandı vb.).
8. **Haberler & Duyurular:** Zengin metinli haber girişi, kapak görseli, SEO etiketleri ve yayın durumu.
9. **Galeri Yönetimi:** Kategori bazlı restoran ve ürün fotoğrafları yükleme/düzenleme.
10. **Sayfa Yönetimi:** Hakkımızda, KVKK, Gizlilik gibi kurumsal sayfaların içeriklerinin CMS üzerinden güncellenmesi.
11. **Medya Kütüphanesi:** Sürükle-bırak dosya yükleme, sunucuya kalıcı kayıt (`/public/uploads/`), dosya boyutu kontrolü ve alt metin belirleme.
12. **İletişim Mesajları:** İletişim formundan gelen mesajların okunması ve durum takibi.
13. **Kullanıcılar & Yetkiler:** Kullanıcı ekleme, şifre belirleme, rol atama (Süper Admin, Merkez Personeli, Şube Yöneticisi) ve şube eşleştirme.
14. **SEO Yönetimi:** Site geneli meta başlık, açıklama, anahtar kelimeler ve sosyal medya OG etiketleri.
15. **Genel Ayarlar:** Site logosu, favicon, merkez iletişim numaraları, WhatsApp hattı, fiyat gösterimi açma/kapama, bakım modu anahtarı.
16. **Sistem Kayıtları (Audit Log):** Hangi kullanıcının hangi IP üzerinden ne zaman şube, ürün veya rezervasyon güncellediğini gösteren kronolojik denetim kaydı.

---

## 🛠️ Teknik Mimari ve Kullanılan Teknolojiler

- **Çatı (Framework):** Next.js 14 (App Router mimarisi)
- **Dil:** TypeScript & Node.js
- **Stil & UI:** Tailwind CSS, PostCSS, Lucide Icons, Canvas Confetti
- **Veritabanı & ORM:** Prisma ORM, SQLite (`prisma/dev.db` - Sıfır kurulum gerektirir, taşınabilirdir)
- **Kimlik Doğrulama:** JWT (JSON Web Tokens) `jose`, şifreleme `bcryptjs`, HttpOnly güvenli çerezler
- **SEO & Optimizasyon:** Schema.org Restaurant JSON-LD, dinamik `sitemap.xml`, `robots.txt`, OpenGraph meta etiketleri, Next/Image optimizasyonu

---

## 📂 Proje Dizin Yapısı

```
Lahmacun_House/
├── .env                          # Çevre değişkenleri (PORT, DATABASE_URL, JWT_SECRET)
├── package.json                  # Proje bağımlılıkları ve scriptler
├── next.config.mjs               # Next.js konfigürasyonu
├── tailwind.config.ts            # Özel kurumsal renkler ve tema ayarları
├── start.bat                     # Windows tek tıkla başlatma betiği
├── stop.bat                      # Windows tek tıkla durdurma betiği
├── prisma/
│   ├── schema.prisma             # 21 adet Prisma veri modeli (Users, Branches, Products...)
│   ├── dev.db                    # SQLite ilişkisel veritabanı dosyası
│   └── seed.js                   # 17 şube, ürünler, kategoriler ve admin kullanıcı tohumlama
├── public/
│   ├── logo.png                  # Resmi Lahmacun House vektörel logosu
│   ├── favicon.png               # Resmi tarayıcı ikonu
│   ├── uploads/                  # Medya kütüphanesi yüklemeleri
│   └── images/                   # Kurumsal fotoğraflar ve yemek görselleri
└── src/
    ├── app/                      # Next.js App Router sayfaları ve API rotaları
    │   ├── page.tsx              # Ana sayfa (Hero, Harita, Ürünler, Hikaye)
    │   ├── menu/                 # Menü sayfası
    │   ├── subelerimiz/          # Şubelerimiz & [slug] şube detay
    │   ├── rezervasyon/          # Rezervasyon oluşturma
    │   ├── rezervasyon-sorgula/  # Rezervasyon takip & sorgulama
    │   ├── bayilik/              # Franchise başvuru sayfası
    │   ├── hakkimizda/           # Kurumsal tarihçe ve değerler
    │   ├── haberler/             # Haberler listesi ve detayları
    │   ├── galeri/               # Fotoğraf galerisi
    │   ├── iletisim/             # İletişim formu ve genel merkez bilgileri
    │   ├── admin/                # 16 bölümlü SaaS yönetim paneli
    │   └── api/                  # 30+ RESTful backend API ucu
    ├── components/               # Tekrar kullanılabilir React bileşenleri
    │   ├── Header.tsx            # Üst navigasyon
    │   ├── Footer.tsx            # Kurumsal alt bilgi
    │   ├── TurkeyMap.tsx         # İnteraktif Türkiye Haritası
    │   ├── FloatingWhatsApp.tsx  # WhatsApp canlı destek butonu
    │   └── CookieBanner.tsx      # Çerez onay bildirim çubuğu
    └── lib/
        ├── prisma.ts             # Prisma Client veritabanı tekil örneği
        ├── auth.ts               # JWT imzalama, doğrulama ve rol kontrolleri
        └── audit.ts              # Yönetici işlem denetim kaydı yardımcı fonksiyonu
```

---

## 🔌 API Uç Noktaları Özeti

| Kategori | Uç Nokta | Metot | Açıklama |
| :--- | :--- | :--- | :--- |
| **Auth** | `/api/auth/login` | POST | Yönetici oturum açma (JWT döner) |
| **Auth** | `/api/auth/me` | GET | Aktif oturum bilgilerini ve rolünü getirir |
| **Auth** | `/api/auth/logout` | POST | Güvenli oturum kapatma |
| **Şubeler** | `/api/branches` | GET, POST | Şubeleri listeleme veya yeni şube ekleme |
| **Şubeler** | `/api/branches/[id]` | GET, PUT, DELETE | Şube detay, güncelleme veya silme |
| **Menü** | `/api/categories` | GET, POST | Kategorileri listeleme veya ekleme |
| **Menü** | `/api/products` | GET, POST | Ürünleri listeleme veya yeni ürün ekleme |
| **Rezervasyon**| `/api/reservations` | GET, POST | Rezervasyon oluşturma veya listeleme |
| **Rezervasyon**| `/api/reservations/check-availability` | GET | Şube ve saat için masa müsaitlik kontrolü |
| **Rezervasyon**| `/api/reservations/[id]` | GET, PUT | Rezervasyon durumunu güncelleme (Onay/Ret) |
| **Bayilik** | `/api/franchise` | GET, POST | Franchise başvurusu gönderme veya inceleme |
| **Medya** | `/api/upload` | POST | Dosya yükleme (Multipart) |
| **İstatistik** | `/api/stats` | GET | Admin paneli için canlı KPI verileri |

---

## 🏢 Kurumsal İletişim & Genel Merkez Bilgileri

- **Firma:** Lahmacun House (OZN Gıda)
- **Tedarik & Çiftlik:** POEL Tarım
- **Genel Merkez:** Selanik Cad. 51/A Kızılay, Çankaya / ANKARA
- **Telefon:** 0 501 156 06 93
- **WhatsApp:** +90 501 156 06 93
- **Resmi Web Sitesi:** [https://www.lahmacunhouse.tr/](https://www.lahmacunhouse.tr/)

---
*Tüm hakları saklıdır © 2026 Lahmacun House.*
