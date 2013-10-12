$('input').val('Enter your name here');
$('input').focus(function() {
	if ($(this).val() === 'Enter your name here') {
		$(this).val('');
	}
});
$('input').blur(function() {
	if ($(this).val() === '') {
		$(this).val('Enter your name here');
	}
});
