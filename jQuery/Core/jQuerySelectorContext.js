$('p').click(function() {
	var X = $('span',this);
	PRINT(X);
	PRINT(X.length);
	PRINT(X.selector);
	PRINT(X.context);
});
