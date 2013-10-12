window.dbo = openDatabase('POC','1.0','Proof-of-concept', 1048576);
window.msg = $('#msg');

function WebSqlError(tx,result) {
	if (window.msg.text()) {
		window.msg.append('<br>');
	}
	window.msg.append(result.message);
}

!function($, window, undefined) {
	var Variables = {}; // Variables that are to be passed from one function to another.

	Variables.Ready = $.Deferred();
	Variables.DropTableDeferred = $.Deferred();
	Variables.CreateTableDeferred = $.Deferred();
	dbo.transaction(function(myTrans) {
		myTrans.executeSql(
			'drop table Test;',
			[],
			Variables.DropTableDeferred.resolve()
			// ,WebSqlError
		);
	});
	$.when(Variables.DropTableDeferred).done(function() {
		dbo.transaction(function(myTrans) {
			myTrans.executeSql(
				'CREATE TABLE IF NOT EXISTS Test' 
				+ '(TestID Integer NOT NULL PRIMARY KEY'
				+ ',TestSort Int'
				+ ');',
				[],
				Variables.CreateTableDeferred.resolve(),
				WebSqlError
			);
		});
	});

	$.when(Variables.CreateTableDeferred).done(function() {
		for (var i=0;i < 10;i++) {
			myFunction(i);
		};
		Variables.Ready.resolve();
		function myFunction(i) {
			dbo.transaction(function(myTrans) {
				myTrans.executeSql(
					'INSERT INTO Test(TestID,TestSort) VALUES(?,?)',
					[
						i
						,i+100000
					]
					,function() {}
					,WebSqlError
				)
			});
		};
	});
	$.when(Variables.Ready).done(function() {
		$('#Save').removeAttr('disabled');
	});
}(jQuery, window);

!function($, window, undefined) {
}(jQuery, window);

