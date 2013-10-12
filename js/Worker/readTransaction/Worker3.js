// importScripts("foo.js", "bar.js");

var myError = function(transaction,argument) {
	postMessage({
		 message: 'myError '
		,complete: true 
	});
}

var Variables = {};
var dbo = openDatabaseSync('readTransaction', '1.0', 'readTransaction Hello World', 1024);
self.postMessage('Open for business!');

self.onmessage = function(argument) {
	var local = {};
	local.cmd = argument.data.cmd.toLowerCase();
	if (local.cmd === 'insert') {
		dbo.transaction(function(myTransaction) {
			var local = {};
			local.TestSort = argument.data.TestSort;
			local.qrySave = myTransaction.executeSql(
				 'INSERT INTO Test(TestSort) VALUES(?)'
				,[local.TestSort]
				,[] // Success callback
				,myError
			);
			local.result = myTransaction.executeSql(
				 'SELECT * FROM Test where TestID=?;'
				,[local.qrySave.insertId]
				,[] // Success callback
				,myError
			);
			Variables.qryTest = local.result.rows.item(0);
		});
		self.postMessage('Inserted TestID: ' + Variables.qryTest.TestID);
	} else if (local.cmd === 'read') {
		try {
			dbo.readTransaction(function(myTransaction) {
				var local = {};
				local.TestSort = argument.data.TestSort;
				local.result = myTransaction.executeSql(
					 'SELECT * FROM Test where TestSort=?;'
					,[local.TestSort]
					,[] // Success callback
					,myError
				);
				Variables.qryTest = local.result.rows.item(0);
			});
			self.postMessage('Read TestID: ' + Variables.qryTest.TestID);
		} catch(myError) {
			self.postMessage('readTransaction Error: ' + myError.message);
		}
	} else if (local.cmd === 'close') {
		self.postMessage('Closed.');
		self.close();
	} else if (local.cmd === 'complete') {
		self.postMessage({message: 'Completed.  Same as closed.', complete: true});
	} else {
		self.postMessage('Unknown command: ' + argument.data.cmd);
	};
};
