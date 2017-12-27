var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".


var connection = mysql.createConnection({ // mysql package database creation / access object
	user: 'root',
	password: '', //didn't set one up
	database: 'chat'
});

connection.connect(); // connect the database to our project

module.exports = connection;

//how does this connection know how to located my schema?