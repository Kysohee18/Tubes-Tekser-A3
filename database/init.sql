<<<<<<< HEAD
CREATE TABLE IF NOT EXISTS challenges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') DEFAULT 'Medium',
    contributor VARCHAR(255) DEFAULT 'Anonymous',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO challenges (description, difficulty, contributor) VALUES 
('Lakukan plank selama 1 menit tanpa berhenti.', 'Medium', 'Coach Budi'),
('Minum 2 liter air putih hari ini.', 'Easy', 'Dr. Sehat'),
('Lari pagi sejauh 5km.', 'Hard', 'Runner01'),
('Baca buku 10 halaman.', 'Easy', 'BookWorm'),
('Tidak makan gorengan seharian.', 'Hard', 'DietMaster'),
('Push-up 20 kali.', 'Medium', 'FitGuy'),
('Sapa 3 orang asing hari ini dengan senyuman.', 'Medium', 'SocialBee'),
('Tidur sebelum jam 10 malam.', 'Medium', 'SleepyHead'),
('Belajar coding selama 1 jam fokus.', 'Hard', 'DevMaster'),
('Rapikan tempat tidur setelah bangun.', 'Easy', 'CleanFreak');
=======
-- 1. Buat Database
CREATE DATABASE IF NOT EXISTS randoquest_db;
USE randoquest_db;

-- 2. Buat Tabel Utama (Hanya 1 Tabel)
CREATE TABLE IF NOT EXISTS challenges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL DEFAULT 'Medium',
    contributor VARCHAR(100) DEFAULT 'Anonymous',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Seed Data (Data Awal Wajib)
-- Agar saat demo aplikasi tidak kosong melompong
INSERT INTO challenges (description, difficulty, contributor) VALUES 
('Nyanyi lagu "Balonku" tapi semua huruf vokal diganti O', 'Medium', 'System'),
('Push up 10 kali dalam 20 detik sekarang juga!', 'Hard', 'GymBro'),
('Sebutkan 5 nama kota di Indonesia yang berawalan huruf S', 'Easy', 'Admin'),
('Kirim stiker random ke grup WhatsApp keluarga', 'Hard', 'Prankster'),
('Tahan nafas selama 30 detik', 'Medium', 'HealthCheck'),
('Tirukan suara hewan favoritmu sekeras mungkin', 'Easy', 'Anonim'),
('Minum air putih 1 gelas sekarang', 'Easy', 'HealthBot'),
('Baca 1 berita internasional hari ini', 'Medium', 'NewsReader'),
('Sebutkan 3 kata yang berakhiran "ng"', 'Easy', 'Linguist'),
('Lakukan plank selama 45 detik', 'Hard', 'FitnessCoach');
>>>>>>> feature/ui-minimalist-ananda
