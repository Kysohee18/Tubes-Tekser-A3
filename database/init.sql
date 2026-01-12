-- 1. Buat Database
CREATE DATABASE IF NOT EXISTS randoquest_db;
USE randoquest_db;

-- 2. Buat Tabel Utama 
CREATE TABLE IF NOT EXISTS challenges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL DEFAULT 'Medium',
    contributor VARCHAR(100) DEFAULT 'Anonymous',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Seed Data (Data Awal Wajib)

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
