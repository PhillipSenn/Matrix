$('#myID').ajaxComplete(function(A,B,C) {
	PRINT("Complete!")
	PRINT(A);
	PRINT(B);
	PRINT(C);
	PRINT(this);
});

$('button').click(function() {
	$.ajax();
});

