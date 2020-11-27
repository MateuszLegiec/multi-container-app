'use strict';

const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

setTimeout(() => {
    const PORT = 8090;
    const HOST = '0.0.0.0';

    const app = express();

    app.use(cors())

    app.get('/fact', (req, res) => {
        connection.query("SELECT * FROM FACTS ORDER BY RAND() LIMIT 1",(err,row) => {
            if(err) throw err;
            res.send(row)
        })
    });

    app.listen(PORT, HOST);

    const connection = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USERNAME,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_NAME
    });

    connection.connect(err => {
        if (err) throw err;
        console.log('Connected!');
    });

    console.log(`Running on http://${HOST}:${PORT}`);

}, 1000);

