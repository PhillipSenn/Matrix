var i=0;
function myFunction() {
	var i=100;
	function f() {
		i=i+1;
		return i;
	}
	return f(); // with parenthesis
};
var X = myFunction();
PRINT(X);
PRINT(X);

