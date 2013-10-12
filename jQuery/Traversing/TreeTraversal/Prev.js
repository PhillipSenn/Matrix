$('td').click(function() {
	var X = $(this).prev();

	$('td.myClass3').removeClass('myClass3');
	X.addClass('myClass3');
});