var X = {};
X.url = 'my.cfc';
X.type= 'POST'
X.dataType='json';
X.error = function() {
	$('#ErrorMsg').text('An Ajax error has occurred.');
};

jQuery.ajaxSetup(X);
