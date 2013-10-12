var X = +new Date; // jQuery Cookbook Page 102.
$('p').dblclick(X,function(myEvent) {
	var ElapsedMilliseconds = +new Date - X;
	PRINT(ElapsedMilliseconds);
});


