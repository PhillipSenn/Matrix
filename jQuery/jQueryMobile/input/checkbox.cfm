<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/latest/jquery.mobile.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="http://code.jquery.com/mobile/latest/jquery.mobile.js"></script>
</head>
<body>
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1></h1>
	</header>
	<div data-role="content">
		<input id="CollID1" name="CollID" type="checkbox" value="1">
		<label for="CollID1">Option A</label>
		<input id="CollID2" name="CollID" type="checkbox" value="2">
		<label for="CollID2">Option B</label>
		<a href="SetColl.htm" data-role="button" rel="external">Go</a> 
	</div>
	<footer data-role="footer">
		<h1>Collections</h1>
	</footer>
</section>
</body>
</html>
