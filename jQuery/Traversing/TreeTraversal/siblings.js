$('td').click(function() {
	var X = $(this).siblings();

	$('td.myClass3').removeClass('myClass3');
	X.addClass('myClass3');
});