var X = {};
X.StartTime = now();
$('input').blur(X,function(myEvent) {
	PRINT(X);
	PRINT(myEvent);
	PRINT(this);
});