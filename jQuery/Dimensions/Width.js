$(window).resize(function() {
	var X = $(window).width();
	$('#windowwidth').text(X);
	X = $('#box').width();
	$('#boxwidth').text(X);
	X = $('#box').innerWidth();
	$('#boxinnerWidth').text(X);
	X = $('#box').outerWidth();
	$('#boxouterWidth').text(X);
	X = $(document).width();
	$('#documentwidth').text(X);
});

$(window).trigger('resize');
