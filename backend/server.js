const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
app.use(cors());

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'raffle_db'
})

app.get('/tickets', (request, response) => {
    const sql = "SELECT name FROM tickets";
    db.query(sql, (error, data) => {
        if (error) return response.json(error);
        return response.json(data);
    })
})

app.listen(8081, () => {
    console.log("Listening");
})