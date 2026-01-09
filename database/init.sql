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