$('input').filter(':checkbox').change(function() {
	var myName = $(this).closest('td').next().text();
	$('#chosen ul').append('<li>' + myName + '</li>');
	$(this).closest('tr').remove();
});
