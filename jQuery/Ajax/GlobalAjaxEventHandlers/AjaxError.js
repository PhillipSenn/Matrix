$('#myID').ajaxError(function(A, B, C, D) {
	PRINT(A);
	PRINT(B);
	PRINT(C);
	PRINT(D);
	PRINT(this);
});

$('button').click(function() {
	$.ajax({url:'notfound.html'});
});

