$('td').click(function() {
	$('tr').removeClass('myClass3');
	$(this).closest('tr',':odd').addClass('myClass3');
});
