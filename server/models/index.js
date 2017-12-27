var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {

	      var queryString = 'select messages.id, messages.message, messages.roomname, users.name \
	                      from messages left outer join users on (messages.author = users.id) \
	                      order by messages.id desc'; //sql query for joining the table elements together

	      db.query(queryString, function(err, results) { // runs the query method from mysql library
	        callback(err, results);
	      });

    }, 



    post: function (message, callback) {

    	 // create a message for a user id based on the given name
      var queryStr = 'insert into messages(message, author, roomname) \
                      value (?, (select id from users where name = ? limit 1), ?)';

      db.query(queryStr, message, function(err, results) {
        callback(err, results);
      });
  },

  users: {
    // same logic as messages

    get: function (callback) {

      var queryStr = 'select * from users';
      db.query(queryStr, function(err, results) {
        callback(err, results);
      });
    },
    post: function (params, callback) { //insert new user

      var queryStr = 'insert into users(name) values (?)';

      db.query(queryStr, params, function(err, results) {
        callback(err, results);
      });
    }
  }
};

