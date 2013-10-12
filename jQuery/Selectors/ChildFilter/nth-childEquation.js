$('input[name=myInput]').keyup(function() {
	var X = $(this).val();
	$('li').removeClass('myClass')
	$('li').filter(':nth-child(' + X + 'n)').addClass('myClass');
});