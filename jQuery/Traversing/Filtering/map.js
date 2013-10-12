X = $('p').map(function(I,myElement) {
	PRINT(I);
	PRINT(myElement);
	PRINT(this);
	return $(myElement).text().toUpperCase();
});
PRINT(X);
