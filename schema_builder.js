var fs = require('fs');
var sql = require('seriate');

var dbConfig = require('./secrets.js').dbConfig;
sql.setDefaultConfig( dbConfig );

var types = './types';
var tables = './tables';
var fileNames = generateFileNames(types);

var generateFileNames = function(directoryPath) {
	fs.readdirSync(directoryPath, (err, files) => {
	  files.forEach(file => {
	    console.log(file);
	  });
	});
};