$('#PRINT').show();
!function($, window, undefined) {
	var Variables = {};

	window.dbo = openDatabase('readTransaction', '1.0', 'readTransaction Hello World', 1024);
	Variables.Ready = $.Deferred();
	Variables.DropTableDeferred = $.Deferred();
	Variables.CreateTableDeferred = $.Deferred();
	$(document).on('click','#Create',function() {
		window.dbo.transaction(function(myTrans) {
			myTrans.executeSql(
				'drop table Test;',
				[],
				Variables.DropTableDeferred.resolve()
			);
		});
	});
	$.when(Variables.DropTableDeferred).done(function() {
		window.dbo.transaction(function(myTrans) {
			myTrans.executeSql(
				'CREATE TABLE IF NOT EXISTS Test' 
				+ '(TestID Integer NOT NULL PRIMARY KEY AUTOINCREMENT'
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
			window.dbo.transaction(function(myTrans) {
				myTrans.executeSql(
					'INSERT INTO Test(TestID,TestSort) VALUES(?,?)',
					[
						i
						,i+1000
					]
					,function() {}
					,WebSqlError
				)
			});
		};
	});
	$.when(Variables.Ready).done(function() {
		$('#Read').removeAttr('disabled');
	});
}(jQuery, window);

var dom = {};
dom.TestSort = $('#TestSort');

!function($, window, undefined) {
	var myWorker;
	myWorker = new Worker('Worker3.js?Cache=' + yyyymmddhhnnss());
	myWorker.onmessage = function (myEvent) {
		if (myEvent.data.message) {
			$('#PRINT').append(myEvent.data.message + "<br>");
		} else {
			$('#PRINT').append(myEvent.data + "<br>");
		}
		if (myEvent.data.complete) {
			myWorker.terminate();
		}
	};

myWorker.onerror = function(myError) {
	console.log('There was an error in ' + myError.filename + ' at ' + myError.lineno + ': ' + myError.message);
};

//		myWorker.onError = function(myError) {
//			throw new Error (myError.message + ' (' + myError.filename + ': ' + myError.lineno + ')');
//		}

	$(document).on('click','#Save',function() {
		$('#PRINT').append('click<br>');
		myWorker.postMessage({
			'cmd': 'insert', 'TestSort': dom.TestSort.val()
		});
	});
	$(document).on('click','#Read',function() {
		$('#PRINT').append('click<br>');
		myWorker.postMessage({
			'cmd': 'read', 'TestSort': dom.TestSort.val()
		});
	});
	$(document).on('click','#Close',function() {
		$('#PRINT').append('click<br>');
		myWorker.postMessage({
			'cmd': 'close'
		});
	});
	$(document).on('click','#Complete',function() {
		$('#PRINT').append('click<br>');
		myWorker.postMessage({
			'cmd': 'complete'
		});
	});
}(jQuery, window);
