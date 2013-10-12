(function() {
	for (var i=0; i<2; i++) {
		console.log(i);
		myFunction();
	}
	function myFunction() {
		console.log('myFunction')
	}
})();


(function() {
	dbo = openDatabase('iState', '1.0', 'State Table in local storage', 1024);
	for (var i=0; i<2; i++) {
		console.log(i);
		dbo.transaction(mySQLFunction);
	}
	function mySQLFunction(SQLTransaction) {
		console.log('mySQLFunction');
	}
})();
