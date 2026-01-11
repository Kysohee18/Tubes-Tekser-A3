const mysql = require('mysql2');
require('dotenv').config();

const pool = mysql.createPool({
    host: process.env.DB_HOST || 'db_service',
    user: process.env.DB_USER || 'user',
    password: process.env.DB_PASS || 'password',
    database: process.env.DB_NAME || 'randoquest_db',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Function to test connection with retries
const testConnection = (retries = 5) => {
    pool.getConnection((err, connection) => {
        if (err) {
            console.error(`Database connection failed: ${err.message}. Retrying... (${retries} left)`);
            if (retries > 0) {
                setTimeout(() => testConnection(retries - 1), 5000); // Wait 5 seconds before retry
            }
        } else {
            console.log('Successfully connected to MySQL database!');
            connection.release();
        }
    });
};

testConnection();

module.exports = pool.promise();
