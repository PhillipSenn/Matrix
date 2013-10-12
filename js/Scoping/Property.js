var myFunction = function() {
	return myFunction.i;
};
myFunction.i = 100;
X = myFunction();
PRINT(X);
