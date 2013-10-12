var dbo = openDatabase('iSwatchDog','1.0','SwatchDog', 1048576);

var Populate = function() {
	$('body').append('3 Populate<br>');
	dbo.transaction(function(myTrans) {
		myTrans.executeSql("INSERT INTO HelloWorld(HelloWorldID,HelloWorldName) VALUES(100,'010-70')");
		myTrans.executeSql("INSERT INTO HelloWorld(HelloWorldID,HelloWorldName) VALUES(200,'116-60')");
		myTrans.executeSql("INSERT INTO HelloWorld(HelloWorldID,HelloWorldName) VALUES(300,'226-60')");
		myTrans.executeSql("INSERT INTO HelloWorld(HelloWorldID,HelloWorldName) VALUES(400,'9826')");
		myTrans.executeSql("INSERT INTO HelloWorld(HelloWorldID,HelloWorldName) VALUES(500,'117-70')");
	});
}

var CreateTable = function() {
	$('body').append('2 CreateTable<br>');
	dbo.transaction(function(myTrans) {
		myTrans.executeSql(
			'CREATE TABLE IF NOT EXISTS HelloWorld'
			+ '(HelloWorldID Int NOT NULL'
			+ ',HelloWorldName Varchar(20)'
			+ ');'
			,[]
			,function() {
				Populate();
			}
		);
	});
}

$('#Reset').click(function() {
	$('body').append('1 Reset<br>');
	dbo.transaction(function(myTrans) {
		myTrans.executeSql(
			'drop table HelloWorld;'
			,[]
			,CreateTable()
		);
	});
});

$('#Save').click(function() {
	var HelloWorldName = $('#HelloWorldName').val();
	var i;
	dbo.transaction(function(myTrans) {
		myTrans.executeSql(
			'SELECT HelloWorldID'
			+ ' FROM HelloWorld' 
			+ ' WHERE HelloWorldName = ?',
			[HelloWorldName], 
			function (notused, result) {
				if (result.rows.length) {
					for (i=0; i < result.rows.length; i++) {
						row = result.rows.item(i);
						$('input[name=HelloWorldID]').val(row.HelloWorldID);
					}
				} else {
					$('input[name=HelloWorldID]').val('0');
				}
				$('form').submit();
			},
			function(notused, myError) {
				$('h1').text(myError.message);
			}
		);
	});
});
