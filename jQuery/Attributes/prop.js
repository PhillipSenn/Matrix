$('input').filter(':checkbox').click(function() {
	var X = $(this).prop('checked');
	PRINT(X);
});