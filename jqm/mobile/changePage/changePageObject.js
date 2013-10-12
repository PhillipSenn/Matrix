$('a').click(function() {
	alert('opk');
	var X = {};
	X.url = 'newPage.cfm';
	X.type='post';
	X.data = $('form').serialize();
	$.mobile.changePage(X);
});
