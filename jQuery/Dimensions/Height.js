$(window).resize(function() {
	var X = $(window).height();
	$('#windowheight').text(X);
	X = $('#box').height();
	$('#boxheight').text(X);
	X = $('#box').innerHeight();
	$('#boxinnerHeight').text(X);
	X = $('#box').outerHeight();
	$('#boxouterHeight').text(X);
	X = $(document).height();
	$('#documentheight').text(X);
});

$(window).trigger('resize');
