var fs = require('fs');
var sql = require('seriate');

var dbConfig = require('./secrets.js').dbConfig;
sql.setDefaultConfig( dbConfig );

var types = './typ';
var tables = './tab';
// preTables are the tables that need to be crated first because they will
// later be referenced in subsequent scripts for indexing
var preTables = [ 
	'dbo.ClaimCodeCategories.Table.sql',
	'dbo.GhostDraftDocuments.Table.sql',
	'dbo.GhostDraftTemplatePackages.Table.sql',
	'dbo.GhostDraftTemplates.Table.sql',
	'dbo.Invoice.Table.sql',
	'dbo.Payment.Table.sql',
	'dbo.Policy.Table.sql',
	'dbo.State.Table.sql',
	'dbo.Users.Table.sql'
]

// First, run SQL to define all custom data types
console.log('\nGenerating custom data types...');
generateFileNames(types);

// Second, generate preTables that will later be referenced for indexing
setTimeout(function(){
	console.log('\nGenerating preTables...');
    preTables.forEach(file => {
	    runSQL(tables + '/' + file);
	});
}, 750);

// Third, generate all remaining tables
setTimeout(function(){
	console.log('\nGenerating remaining tables...');
}, 1000);
setTimeout(function(){
	generateFileNames(tables);
}, 2000);
setTimeout(function(){
	console.log('\nAll done!\n');
	process.exit();
}, 3000);

// This function creates an array of all table filenames within the tab folder
// and removes the preTables that were already generated
function generateFileNames(directoryPath) {
	fs.readdir(directoryPath, (err, files) => {
	    files.filter(function(table) {
	    	return preTables.indexOf(table) === -1;
	    })
	    .forEach(file => {
		    runSQL(directoryPath + '/' + file);
		});
	});
}

// This function runs the indicated *.sql file
// The *.sql file needed to be cleaned up due to its encoding and use of keyword 'GO'
function runSQL(filePath) {
	console.log(filePath);
	var startLine = filePath.slice(0,5) === './typ' ? 3 : 7;
	fs.readFile(filePath, 'ucs2', function(err, data) {
		return sql.execute({
			query: data.slice(1).split('\n').slice(startLine).join('\n').split('GO').join('\n')
		});
	});
}