const mysql = require('mysql2');

export const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    port: 3306,
    database: 'log_reg_2024',
});

db.connect((err) => {
    if (err) {
        console.error('error connecting to the database', err);
        return;
    }
    console.log('connected to the datbase');
});