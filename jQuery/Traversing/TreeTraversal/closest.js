$('td').click(function() {
	$('tr').removeClass('myClass3');
	$(this).closest('tr').addClass('myClass3');
});
