!function($, window, undefined) {
	var local = {
		name: "Joanna",
		hair: "Brunette",
		age: 35,
		favoriteMovies: [
			"Terminator 2",
			"The Notebook",
			"Teenwolf"
		]
	};
	
	var ajaxResponse = $.ajax({
		type: "post",
		url: "JSON3b.cfm",
		contentType: "application/json",
		data: JSON.stringify(local)
	})
	
	ajaxResponse.then(
		function( result ){
			$( "#myID" ).html( result );
		}
	);
}(jQuery, window);