$('#myID').ajaxSend(function(A,B,C) {
	PRINT("Send!")
	PRINT(A);
	PRINT(B);
	PRINT(C);
});

$('button').click(function() {
	$.ajax();
});

