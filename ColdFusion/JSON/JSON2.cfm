<--- --------------------------------------------------------------------------------------- ----
	
	Blog Entry:
	Posting JSON Data To The ColdFusion Server Using jQuery
	
	Code Snippet:
	1
	
	Author:
	Ben Nadel / Kinky Solutions
	
	Link:
	http://www.bennadel.com/index.cfm?event=blog.view&id=2207
	
	Date Posted:
	Jun 7, 2011 at 10:59 AM
	
---- --------------------------------------------------------------------------------------- --->

<!DOCTYPE html>
<html>
<head>
<title>Posting JSON Data To The Server Using jQuery</title>
</head>
<body>
<h1> Posting JSON Data To The Server Using jQuery </h1>
<div id="response"> 
	<!-- To be populated dynamically. --> 
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript">

// Define the data packet that we are going to post to the
// server. This will be "stringified" as a JSON value.
var postData = {
	name: "Joanna",
	hair: "Brunette",
	age: 35,
	favoriteMovies: [
		"Terminator 2",
		"The Notebook",
		"Teenwolf"
	]
};


// Post the data to the server as the HTTP Request Body.
// To do this, we have to stringify the postData value
// and pass it in a string value (so that jQuery won't try
// to process it as a query string).
var ajaxResponse = $.ajax({
	type: "post",
	url: "JSON2.cfc",
	contentType: "application/json",
	data: {
		method:"Save"
		,myData:JSON.stringify( postData )
	}
})


// When the response comes back, output the HTML.
ajaxResponse.then(
	function( apiResponse ){

		// Dump HTML to page for debugging.
		$( "#response" ).html( apiResponse );

	}
);

</script>
</body>
</html>