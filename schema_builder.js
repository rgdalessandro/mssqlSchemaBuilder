var fs = require('fs');
var sql = require('seriate');

var dbConfig = require('./secrets.js').dbConfig;
sql.setDefaultConfig( dbConfig );

var types = './types';
var pre_tables = './pre_tables';
var tables = './tables';

// First, run SQL to define all column types
generateFileNames(types);

// Second, generate tables that will later be referenced for indexing
setTimeout(function(){
	generateFileNames(pre_tables);
}, 1000);

// Third, generate all remaining tables
setTimeout(function(){
	generateFileNames(tables);
}, 3000);


// This function creates an array of all filenames within a folder
function generateFileNames(directoryPath) {
	fs.readdir(directoryPath, (err, files) => {
	  files.forEach(file => {
	    runSQL(directoryPath + '/' + file);
	  });
	});
}

// This function runs the indicated *.sql file
// The *.sql file needed to be cleaned up due to its encoding and use of keyword 'GO'
function runSQL(filePath) {
	var startLine = filePath.slice(0,7) === './types' ? 3 : 7;
	fs.readFile(filePath, 'ucs2', function(err, data) {
		return sql.execute({
			query: data.slice(1).split('\n').slice(startLine).join('\n').split('GO').join('\n')
		});
	});
}