var myFunction = (function() {
	var i=100;
	return function() {
		return i++;
	}
}());
var X = myFunction();
PRINT(X);
X = myFunction();
PRINT(X);

