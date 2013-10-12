<!DOCTYPE html> 
<html>
<head>
<meta charset="utf-8">
<title>jQuery Mobile Web App</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/latest/jquery.mobile.css">
<script>
$(document).bind("mobileinit", function() {
	$.mobile.ajaxEnabled = false;
});
</script>
<script src="http://code.jquery.com/mobile/latest/jquery.mobile.js"></script>
<script src="/Matrix/PhoneGap/Inc/js/phonegap.js" type="text/javascript"></script>

</head> 
<body> 

<div data-role="page" id="page">
	<div data-role="header">
		<h1>Page One</h1>
	</div>
	<div data-role="content">	
		<ul data-role="listview">
			<li><a href="#page2">Page Two</a></li>
            <li><a href="#page3">Page Three</a></li>
			<li><a href="#page4">Page Four</a></li>
		</ul>		
	</div>
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>
</div>

<div data-role="page" id="page2">
	<div data-role="header">
		<h1>Page Two</h1>
	</div>
	<div data-role="content" id="GettingStarted">	
		Content		
	</div>
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>
</div>

<div data-role="page" id="page3">
	<div data-role="header">
		<h1>Page Three</h1>
	</div>
	<div data-role="content">	
		Content		
	</div>
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>
</div>

<div data-role="page" id="page4">
	<div data-role="header">
		<h1>Page Four</h1>
	</div>
	<div data-role="content">	
		Content		
	</div>
	<div data-role="footer">
		<h4>Page Footer</h4>
	</div>
</div>
<script src="GettingStarted.js"></script>
</body>
</html>