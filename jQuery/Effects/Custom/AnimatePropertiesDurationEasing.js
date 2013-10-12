$('#myAnimation').click(function() {
	var X = {};
	X.left = 500;
	$('img').animate(X,10000,'easeInOutBounce');
	$(this).hide();
});
