$.ajax({ 
	url: "my.cfm", 
	cache: false, 
	success: function(html){ 
		$("#results").append(html); 
	} 
});
