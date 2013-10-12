$('select').change(function() {
	var X = $(this).val();
	$('#choice').html(X.join(', ')); 
	PRINT(X);
});
									 
