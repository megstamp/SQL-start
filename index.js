// bring in the library
const mysql = require('mysql2');
const connection = require ('./connection.js')

const db = mysql.createConnection(connection); 


// all this is the query or command:
db.query("SELECT * FROM customers", (err, data) => {
    if(err) {
        console.error(err)
    }
    console.table(data)
    db.end();
});


