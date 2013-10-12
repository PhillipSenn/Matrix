var X = $.ajax('missing.html');

X.fail(
	function(){ 
		PRINT('fail1'); 
	},
	function(){ 
		PRINT('fail2'); 
	}
);
