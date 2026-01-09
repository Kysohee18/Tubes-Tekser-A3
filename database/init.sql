CREATE TABLE IF NOT EXISTS challenges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO challenges (title, description) VALUES
('Pushups', 'Do 20 pushups right now!'),
('Drink Water', 'Drink a full glass of water.'),
('Quick Clean', 'Clean your desk for 5 minutes.'),
('Stretch', 'Stretch your arms and legs.'),
('Short Walk', 'Walk around your room for 2 minutes.'),
('No Screen', 'Look away from the screen for 1 minute.'),
('Breathe', 'Take 5 deep breaths.'),
('Plank', 'Hold a plank for 30 seconds.'),
('Say Hello', 'Send a friendly message to a friend.'),
('Visualize', 'Visualize your goal for 2 minutes.');