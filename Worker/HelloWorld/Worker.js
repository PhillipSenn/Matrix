onmessage = function(myEvent) {

	var WebSqlError = function() {
		postMessage('WebSqlError');
	};
	/*
	var SelectFromTable = function() {
		var local = {};
		
		dbo.transaction(function(myTrans) {
			myTrans.executeSql(
				'SELECT * FROM Test WHERE TestID=4'
				,[]
				,mySuccess
				,myError
			)
		});
		return;
	}
	
	var mySuccess = function(transaction, argument) {
		var local = {};
		
		local.qry = argument.rows.item(0);
		postMessage(local.qry.TestSort);
	}
	
	var myError = function(transaction, argument) {
		postMessage('Error');
	}
	
	var InsertIntoTable = function() {
		for (var i=0;i < 10;i++) {
			myFunction(i);
		};
	
		function myFunction(i) {
			dbo.transaction(function(myTrans) {
				myTrans.executeSql(
					'INSERT INTO Test(TestID,TestSort) VALUES(?,?)',
					[
						i
						,i+100
					]
					,SelectFromTable
					,WebSqlError
				)
			});
		};
	}
	
	*/

	Callback2 = function() {
		postMessage('Callback2');
	}
	Callback = function() {
		postMessage('Callback');
	}
	
	if (myEvent.data === "start" ) {
		var dbo = openDatabaseSync('Worker','1.0','Web Workers Proof-Of-Concept', 1024*1024); // 1MB
		for (var i=0;i < 10;i++) {
			myFunction(i);
		};
	
		function myFunction(i) {
			dbo.transaction(function(myTrans) {
				myTrans.executeSql(
					'INSERT INTO Test(TestID,TestSort) VALUES(?,?)',
					[
						i
						,i+100
					]
					,Callback
					,WebSqlError
				)
			});
		};
		postMessage('Follow Thru');
		/*
		dbo.transaction(function(myTrans) {
			myTrans.executeSql(
				'CREATE TABLE IF NOT EXISTS Test' 
				+ '(TestID Integer NOT NULL PRIMARY KEY'
				+ ',TestSort Int'
				+ ');'
				,[]
				,function() {
					postMessage('OK');
				}
				,WebSqlError
			);
		});
		*/
	}
};
