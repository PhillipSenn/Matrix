var getURL = function(argument) {
	var local = {};
	local.result = '';
	local.hashes = location.href.slice(
		location.href.indexOf('?') + 1
	).split('&');
	for(var i = 0; i < local.hashes.length; i++)	{
		local.hash = local.hashes[i].split('=');
		if (local.hash[0].toUpperCase() === argument.toUpperCase()) {
			local.result = local.hash[1]
		}
	}
	return local.result;
}

var mySuccess = function(transaction,argument) {
}

var myError = function(transaction,argument) {
	postMessage({
		 message: 'Error '
		,complete: true 
	});
}

var Variables = {};
var dbo = openDatabaseSync('readTransaction', '1.0', 'readTransaction Hello World', 1024);
dbo.transaction(function(tx) {
	var local = {};
	local.TestSort = getURL('TestSort');
	local.qrySave = tx.executeSql(
		 'INSERT INTO Test(TestSort) VALUES(?)'
		,[local.TestSort]
		,mySuccess
		,myError
	);
	local.result = tx.executeSql(
		 'SELECT * FROM Test where TestID=?;'
		,[local.qrySave.insertId]
		,mySuccess
		,myError
	);
	Variables.qryTest = local.result.rows.item(0);
});
self.postMessage({
	 // message: 'Found ' + result.rows.item(0).TestSort
	 message: 'TestID: ' + Variables.qryTest.TestID
	,complete: true // Play around with not completing the worker. or self.close()
});


self.addEventListener(
	'message', function(myEvent) {
		var myData = myEvent.data;
		switch (myData.cmd) {
		case 'insert':
			self.postMessage('Insert: ' + myData.TestSort);
			break;
		case 'read':
			self.postMessage('Read: ' + myData.TestSort);
			break;
		default:
			self.postMessage('Unknown command: ' + myData.cmd);
		};
	}, false
);
