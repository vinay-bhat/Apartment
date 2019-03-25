var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  // password : 'root@123',
  // database : 'sampledb',
  password : '',
  database : 'purchase',
  multipleStatements: true
});

module.exports = connection;
