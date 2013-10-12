var X = $.ajax();

X.then(
	function(){ 
		PRINT('ajax succeeded'); 
	},
	function(){ 
		PRINT('ajax failed!'); 
	}
);
