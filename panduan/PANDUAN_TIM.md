# 📄 PANDUAN KERJA TIM (Edisi Super Detail) - Project RandoQuest

Panduan ini dirancang untuk Tim **A3** agar pengerjaan proyek berjalan mulus tanpa konflik kode. Silakan diikuti langkah-demi-langkah.

---

## 👥 STRUKTUR TIM & PIC

| Peran | Nama (PIC) | Tanggung Jawab Utama |
| :--- | :--- | :--- |
| **🏗️ ARCHITECT** | Shahky Yandhana Putra | Manajemen Repo, GitHub Owner, Integrator (Merge). |
| **🐳 DEVOPS** | Khoirul Arif Pratama | Docker, Nginx, Port Forwarding (2581), Network. |
| **🧠 BACKEND** | Fransdito Bayu Pratama | API, Logic Node.js, Koneksi DB, Validasi. |
| **🎨 FRONTEND** | Bima Baraja & Ananda Arlys | EJS, CSS Minimalis, JS Interactivity (Roll button). |
| **🗄️ DBA** | Beby Ayu Verananda | Query init.sql, Data Dummy, Database Persistence. |

---

## � TECH STACK YANG DIGUNAKAN

Berikut adalah teknologi utama yang membangun project **RandoQuest**:

| Kategori | Teknologi | Deskripsi |
| :--- | :--- | :--- |
| **Orchestration** | 🐳 **Docker & Docker Compose** | Mengelola container dan environment secara konsisten. |
| **Web Server** | 🌐 **Nginx** | Reverse Proxy untuk routing traffic dari Host (2581) ke App. |
| **Backend** | 🟢 **Node.js (v18)** | Runtime utama aplikasi server-side. |
| **Framework** | 🚂 **Express.js** | Framework minimalis untuk routing dan middleware API. |
| **Database** | 🐬 **MySQL 8.0** | Relational Database Management System (RDBMS). |
| **Frontend** | 🎨 **EJS + Tailwind CSS** | Templating engine dinamis dengan utility-first CSS framework. |
| **Architecture** | 🔄 **MVC (Model-View-Controller)** | Pola arsitektur untuk memisahkan logika aplikasi. |

---

## �🛠️ TAHAP 1: SETUP AWAL REPOSITORY (Oleh: Shahky/Ketua)

Ikuti urutan perintah ini tepat jika kamu sudah meng-clone template awal:

1.  **Masuk ke folder proyek:**
    ```bash
    cd Projek-tekser-A3
    ```
2.  **Hapus jejak Git lama (PENTING):**
    ```bash
    rm -rf .git
    ```
3.  **Inisialisasi Git baru:**
    ```bash
    git init
    ```
4.  **Buat Repository di GitHub:** 
    *   Buka GitHub.com -> New Repository.
    *   Nama: `projek-tekser-a3-randoquest`.
    *   Klik **Create Repository**.
5.  **Hubungkan folder laptop ke GitHub:**
    ```bash
    git remote add origin https://github.com/Kysohee18/proyek-tekser-A3.git
    ```
6.  **Push awal ke branch main:**
    ```bash
    git add .
    ```
    ```bash
    git commit -m "chore: setup initial structure from template"
    ```
    ```bash
    git branch -M main
    ```
    ```bash
    git push -u origin main
    ```
7.  **Undang Anggota:** Buka repo di browser -> Settings -> Collaborators -> Add People (Tambahkan Khoirul, Fransdito, Bima, Ananda, Beby).

---

## 🌿 TAHAP 2: ALUR KERJA GITHUB (Harian)

**ATURAN EMAS:** Jangan pernah coding langsung di branch `main`. Selalu gunakan branch fitur.

### Langkah Anggota (DevOps/Backend/Frontend/DBA):
1.  **Ambil update terbaru sebelum mulai:**
    ```bash
    git checkout main
    git pull origin main
    ```
2.  **Buat branch baru untuk tugas hari ini:**
    ```bash
    git checkout -b feature/tugas-[nama-pic]
    # Contoh: git checkout -b feature/setup-docker-khoirul
    ```
3.  **Coding seperti biasa.** Simpan perubahan.
4.  **Simpan ke Git Lokal:**
    ```bash
    git add .
    git commit -m "feat: deskripsi apa yang baru kamu tambahkan"
    ```
5.  **Kirim ke GitHub:**
    ```bash
    git push origin feature/tugas-[nama-pic]
    ```

### Langkah Ketua (Shahky) untuk Menggabungkan:
1.  Buka repo di GitHub. 
2.  Klik tombol hijau **"Compare & Pull Request"** yang baru muncul.
3.  Tulis apa yang digabungkan, lalu klik **Create Pull Request**.
4.  Cek kodenya. Jika aman, klik **Merge Pull Request** -> **Confirm Merge**.
5.  Katakan di grup WA: *"Kode terbaru sudah saya gabungkan ke main!"*

---

## 📋 TAHAP 3: ROADMAP PENGERJAAN DETIL

### 1. Database Admin (Beby)
*   Buka file `database/init.sql`.
*   Tulis query `CREATE TABLE challenges` dan `INSERT INTO` minimal 10 data awal.
*   Bantu Backend mencatat nama-nama kolom tabel.

### 2. DevOps Engineer (Khoirul)
*   **Dockerfile:** Pastikan `WORKDIR` di set ke `/usr/src/app`.
*   **Docker-compose:** Set port Nginx ke `2581:80`. 
*   **PENTING:** Tambahkan `volumes` agar anggota lain bisa coding tanpa build ulang.

### 3. Backend Developer (Fransdito)
*   Setting `app/config/database.js` menggunakan variabel di `.env`.
*   Buat `app/routes/index.js`. 
*   Wajib ada 4 endpoint: `GET` (ambil data), `POST` (tambah), `PUT` (edit), `DELETE` (hapus).

### 4. Frontend Developer (Bima & Ananda)
*   Buka `app/view/index.ejs`.
*   Ubah tampilan jadi **Simple Minimalis Monochrome**.
*   Wajib: Pastikan ada tombol `ROLL RANDOM`, Form `SUBMIT`, dan tombol `EDIT/DELETE` di setiap kartu tantangan.

---

## 🚀 TAHAP 4: CARA TESTING (Run Local)

Setelah semua branch di-merge ke `main`, setiap anggota bisa testing dengan:

1.  `git checkout main`
2.  `git pull origin main`
3.  `docker compose up --build`
4.  Buka `localhost:2581` di browser.

---

## ⚠️ ANTISIPASI CONFLICT (Jika Error saat Pull)
Jika saat `git pull` muncul tulisan *"Conflict"*, jangan panik:
1.  Buka file yang bermasalah di VS Code.
2.  VS Code akan memberikan pilihan: `Accept Current Change` atau `Accept Incoming Change`.
3.  Pilih mana kode yang benar (biasanya yang terbaru).
4.  `git add .` -> `git commit -m "fix: resolve conflict"` -> `git push origin main`.

---

## 🗺️ TAHAP 5: DOKUMENTASI TEKNIS (PETA KODE)

Bagian ini menjelaskan letak kode penting agar tim mudah melakukan navigasi dan pengembangan.

### 1. 🏗️ Topologi Infrastruktur (Docker & Network)
Konfigurasi alur request tersimpan di:
*   **`docker-compose.yml`**: Mengatur orkestrasi 3 service (db, app, nginx).
    *   *Port Mapping:* Host (2581) ➔ Nginx (2581).
    *   *Network:* `app_network` (Internal bridge).
*   **`nginx/default.conf`**: Konfigurasi Reverse Proxy.
    *   Mengatur `listen 2581` dan `proxy_pass http://app_service:3000`.
*   **`app/Dockerfile`**: Blueprint image untuk environment Node.js 18-alpine.

### 2. 🗄️ Rancangan Database
Semua skema database dikelola melalui:
*   **`database/init.sql`**: Berisi query DDL (`CREATE TABLE challenges`) dan DML (`INSERT INTO` data seed).
*   *Struktur Tabel:* `id`, `description`, `difficulty` (ENUM), `contributor`, `created_at`.

### 3. 🧠 Backend & Routes (Sistem CRUD)
Logika utama aplikasi berada di folder `/app`:
*   **`app/app.js`**: Entry point aplikasi, inisialisasi Express, Middleware, dan port server (3000).
*   **`app/config/database.js`**: Konfigurasi koneksi MySQL menggunakan library `mysql2/promise` dengan sistem **Retry Connection** (Mencoba ulang koneksi jika DB belum siap).
*   **`app/routes/index.js`**: **PUSAT LOGIKA SISTEM CRUD**.
    *   `GET /`: Merender halaman utama dengan data tantangan.
    *   `GET /api/challenges`: API untuk mengambil semua data (JSON).
    *   `POST /api/challenges`: API untuk menambah tantangan baru.
    *   `PUT /api/challenges/:id`: API untuk mengupdate tantangan yang sudah ada.
    *   `DELETE /api/challenges/:id`: API untuk menghapus tantangan.

### 4. 🎨 Frontend & Interactivity
*   **`app/view/index.ejs`**: View engine utama.
    *   *Styling:* Menggunakan Tailwind CSS untuk layout minimalis.
    *   *Drawer Logic:* Sistem Community Pool menggunakan sliding drawer (Panel kanan).
    *   *Client-side JS:* Mengatur animasi "Roll Random" dan interaksi Modal.
*   **`app/public/`**: Folder untuk aset statis (CSS/JS tambahan jika diperlukan).

---
