const mysql = require('mysql2/promise');

// Setup DB connection
const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'smart_lost_found'
});

module.exports = {
    findByEmail: async (email) => {
        const [rows] = await db.query('SELECT * FROM users WHERE email = ?', [email]);
        return rows[0];
    }
};