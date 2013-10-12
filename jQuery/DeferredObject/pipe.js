var A = $.Deferred();
var B = A.pipe(function( X ) {
	return X * 2;
});

A.resolve( 3.14 );
B.done(function( X ) {
	PRINT(X);
});
