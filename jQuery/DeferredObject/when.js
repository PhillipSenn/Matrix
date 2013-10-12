function doAjax(){
	return $.ajax();
}

function doMoreAjax(){
	return $.ajax();
}

$.when( doAjax(), doMoreAjax() ).then(function(){
	PRINT( 'BOTH ajax requests have completed!' );
}).fail(function(){
	PRINT( 'One or more requests failed!' );
});

