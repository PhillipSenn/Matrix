window.dbo = openDatabase('POC','1.0','Proof-of-concept', 1048576);
window.msg = $('#msg');

function WebSqlError(tx,result) {
	if (window.msg.text()) {
		window.msg.append('<br>');
	}
	window.msg.append(result.message);
}

!function($, window, undefined) {

	var Variables = {};
	
	$(document).on('click','#Save',function() {
		dbo.transaction(function(myTrans) {
			myTrans.executeSql(
				 'SELECT * FROM Test WHERE TestID=?'
				,[TestID]
				,mySuccess
				,myError
			)
		});
	});
}(jQuery, window);
