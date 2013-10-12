var X = $.ajax();

X.always(
	function(){ 
		PRINT('always1'); 
	},
	function(){ 
		PRINT('always2'); 
	}
);
