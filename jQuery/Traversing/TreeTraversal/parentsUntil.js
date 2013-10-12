$('td').click(function() {
	$('*').removeClass('myClass3');
	var X = $(this).parentsUntil('table').addClass('myClass3');
	PRINT(X);
});