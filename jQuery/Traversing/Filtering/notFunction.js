var X = $('p').not(function(index) {
	if (index === 1) {
		return false;
	}
	return true;
});
PRINT(X);
