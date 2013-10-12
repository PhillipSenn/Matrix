var X = $.ajax();

X.done(
	function(){ 
		PRINT('Done1'); 
	},
	function(){ 
		PRINT('Done2'); 
	}
);
