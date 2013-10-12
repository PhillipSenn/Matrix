$('#myAnimation').click(function() {
	var X = {};
	X.left = 500;
	$('img').animate(X);
	$(this).hide();
});
