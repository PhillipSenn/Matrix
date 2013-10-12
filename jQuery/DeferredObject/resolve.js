var X = $.Deferred();
PRINT(X);
$('h1').fadeIn( 3000, X.resolve );
PRINT(X);
PRINT(X.promise());

$.when( X.promise() ).then(function(){
	PRINT('Done!');
});