# 🎲 RandoQuest - Random Challenge

> **Final Project Teknologi Server - Kelompok A3**
> RandoQuest adalah platform generator tantangan acak berbasis komunitas yang dirancang untuk mendukung kegiatan *ice breaking*. Proyek ini diimplementasikan menggunakan arsitektur microservices sederhana dengan Docker untuk memastikan kemudahan deployment dan skalabilitas.

---

## 🚀 Cara Memulai

### 1. Git Clone
Lakukan cloning repository ke mesin lokal Anda:
```bash
git clone https://github.com/Kysohee18/Projek-tekser-A3.git
```

### 2. Akses Folder
Pindah ke direktori proyek:
```bash
cd Projek-tekser-A3
```

---

## 📂 Struktur Folder
```text
Projek-tekser-A3/
├── app/                  # Backend & Frontend (Node.js Express)
│   ├── config/           # Konfigurasi koneksi database
│   ├── routes/           # Definisi jalur API dan navigasi
│   ├── view/             # Dokumen tampilan (EJS Templates)
│   ├── app.js            # Main entry point aplikasi
│   ├── Dockerfile        # Blueprints container aplikasi
│   └── package.json      # Daftar dependensi aplikasi
├── database/             # Sumber data
│   └── init.sql          # Script pembuatan tabel & seed data
├── nginx/                # Web Server & Reverse Proxy
│   └── default.conf      # Konfigurasi routing Nginx
├── .env                  # Environment Variables (Local Only)
├── .env.example          # Template Environment Variables
├── docker-compose.yml    # File orkestrasi Docker
└── README.md             # Dokumentasi proyek
```

---

## 📊 Struktur Database
Aplikasi ini menggunakan MySQL dengan satu tabel utama:

**Tabel `challenges`**
| Field | Type | Description |
|---|---|---|
| `id` | INT (PK, AI) | Identitas unik setiap tantangan |
| `description` | TEXT | Detail teks tantangan |
| `difficulty` | ENUM | Tingkat kesulitan: 'Easy', 'Medium', 'Hard' |
| `contributor` | VARCHAR | Nama penyumbang tantangan |
| `created_at` | TIMESTAMP | Waktu otomatis pembuatan data |

---

## 🏗️ Arsitektur Docker

### Topologi & Alur Request (Flow)
**User Browser** ➔ **Host Machine** (Port 2581) ➔ **Service: Nginx** (Port 80/2581) ➔ **Service: App/NodeJS** (Port 3000) ➔ **Service: MySQL** (Port 3306)

### Detail Layanan
Proyek ini berjalan di atas tiga container utama yang saling terhubung dalam satu jaringan internal:

1.  **`db_service` (MySQL:8.0)**: Container database untuk menyimpan data tantangan (Internal Port: 3306).
2.  **`app_service` (Node.js)**: Container aplikasi yang menjalankan logika bisnis (Internal Port: 3000).
3.  **`nginx_service` (Nginx:Alpine)**: Bertindak sebagai Reverse Proxy yang menerima request dari port host `2581` dan menyalurkannya ke aplikasi.

---

## ✨ Fitur Aplikasi
*   **🎲 Gacha Mode:** Algoritma pengacakan tantangan untuk keseruan sesi *ice breaking*.
*   **📝 Open Contribution:** Memberikan akses bagi siapa saja untuk menambahkan tantangan baru.
*   **✏️ Community Moderation:** Fitur untuk mengedit atau memperbarui tantangan yang sudah ada.
*   **🗑️ Hard Delete:** Kemampuan untuk menghapus konten yang bersifat spam atau tidak pantas secara permanen.
*   **🛡️ Secure Network:** Keamanan tinggi dengan isolasi database yang hanya dapat diakses oleh layanan internal aplikasi.

---

## ⚙️ Konfigurasi Environment (`.env`)
Salin berkas `.env.example` ke `.env` dan sesuaikan nilainya:
```env
GROUP_NAME=A3
DB_USER=user
DB_PASS=password
DB_NAME=randoquest_db
APP_PORT=3000
NGINX_PORT=2581
```

---

## 🐳 Docker Command
Gunakan perintah berikut untuk menjalankan aplikasi:

**Menjalankan Seluruh Service:**
```bash
docker compose up -d --build
```

**Menghentikan Seluruh Service:**
```bash
docker compose down
```

**Melihat Status Container:**
```bash
docker ps
```

---

**Tim Pengembang: Kelompok A3**