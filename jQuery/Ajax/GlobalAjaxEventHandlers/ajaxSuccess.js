$('#myID').ajaxSuccess(function(A,B,C) {
	PRINT("Success!")
	PRINT(A);
	PRINT(B);
	PRINT(C);
});

$('button').click(function() {
	$.ajax();
});

