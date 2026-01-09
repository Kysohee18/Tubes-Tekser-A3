const express = require('express');
const router = express.Router();
const db = require('../config/database');

// --- VIEW ROUTES ---
router.get('/', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM challenges ORDER BY created_at DESC');
        res.render('index', { challenges: rows });
    } catch (error) {
        console.error(error);
        res.status(500).send('Server Error');
    }
});

// Health check
router.get('/health', (req, res) => {
    res.json({ status: 'up', timestamp: new Date() });
});

// --- API ROUTES (CRUD) ---

// 1. GET ALL CHALLENGES
router.get('/api/challenges', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM challenges ORDER BY created_at DESC');
        res.json(rows);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// 2. GET RANDOM CHALLENGE
router.get('/api/challenges/random', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM challenges ORDER BY RAND() LIMIT 1');
        if (rows.length > 0) {
            res.json(rows[0]);
        } else {
            res.status(404).json({ message: 'No challenges found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});
1
// 3. CREATE CHALLENGE
router.post('/api/challenges', async (req, res) => {
    const { description, difficulty, contributor } = req.body;
    try {
        const [result] = await db.query(
            'INSERT INTO challenges (description, difficulty, contributor) VALUES (?, ?, ?)',
            [description, difficulty, contributor || 'Anonymous']
        );
        res.json({ id: result.insertId, description, difficulty, contributor });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// 4. UPDATE CHALLENGE
router.put('/api/challenges/:id', async (req, res) => {
    const { id } = req.params;
    const { description, difficulty } = req.body;
    try {
        await db.query(
            'UPDATE challenges SET description = ?, difficulty = ? WHERE id = ?',
            [description, difficulty, id]
        );
        res.json({ message: 'Challenge updated success' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// 5. DELETE CHALLENGE (Hard Delete)
router.delete('/api/challenges/:id', async (req, res) => {
    const { id } = req.params;
    try {
        await db.query('DELETE FROM challenges WHERE id = ?', [id]);
        res.json({ message: 'Challenge deleted forever' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

module.exports = router;