var X = {};
X.context = $('#myID');
X.success = function(result) {
	$(this).text('Success!');
}
X.complete = function() {
	$(this).append('Complete!');
}

$.ajax(X);