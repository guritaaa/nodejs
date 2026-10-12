# Automated VPS Node.js & Environment Setup

Skrip otomatis untuk instalasi dan konfigurasi cepat environment Node.js (via Gurita Installer), `node-canvas` system dependencies, serta build tools global (`node-gyp`, `prebuild-install`) pada server berbasis Debian/Ubuntu.

---

## 📋 Fitur & Komponen yang Diinstal

1. **Paket Dasar**: `curl`, `git`
2. **Node.js Runtime**: Diinstal langsung melalui installer Gurita
3. **Build Dependencies (`node-canvas`)**:
   - `python3`, `make`, `g++`, `pkg-config`
   - `libcairo2-dev`, `libpango1.0-dev`, `libjpeg-dev`, `libgif-dev`, `librsvg2-dev`
4. **Tool NPM Global**:
   - `node-gyp`
   - `prebuild-install`

---

## ⚡ Cara Penggunaan Cepat (One-Line Command)

Jalankan perintah berikut di terminal VPS / server Anda:

### 1. Mode Root (Rekomendasi)
Jika login sebagai user `root`:

```bash
curl -fsSL https://raw.githubusercontent.com/guritaaa/nodejs/main/install.sh | bash
```

### 2. Mode Sudo (Non-Root User)
Jika login sebagai user biasa dengan akses `sudo`:

```bash
curl -fsSL https://raw.githubusercontent.com/guritaaa/nodejs/main/install.sh | sudo bash
```

> ⚠️ **Catatan**: Ganti `USERNAME` dan `REPO` dengan username GitHub dan nama repositori Anda.

---

## 🔍 Verifikasi Instalasi

Setelah proses eksekusi selesai, Anda dapat memverifikasi bahwa semua tool telah terpasang dengan benar:

```bash
# Periksa versi Node.js
node -v

# Periksa versi NPM
npm -v

# Periksa tool global
node-gyp -v
prebuild-install -v
```

---

## 🛠️ Penanganan Masalah (Troubleshooting)

- **Permission Denied / Akses Ditolak**:
  Pastikan perintah dijalankan dengan privilege `root` atau diawali `sudo bash`.
- **Gagal Mengambil URL Raw GitHub**:
  Pastikan repositori disetel ke **Public**, atau gunakan Token jika repositori bersifat **Private**.
