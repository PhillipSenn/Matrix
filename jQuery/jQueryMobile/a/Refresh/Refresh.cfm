<!DOCTYPE HTML>
<html lang="en" manifest="cache.manifest">
<head>
<meta charset="utf-8">
<meta name="author" content="Phillip Senn">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--- Warning: This is using 1.7.1 --->
<cfinclude template="/Library/Google/min/jQuery.cfm">

<link rel="stylesheet" href="http://code.jquery.com/mobile/latest/jquery.mobile.min.css">
<script src="http://code.jquery.com/mobile/latest/jquery.mobile.min.js"></script>
<script>
function log(X) {console.log(X)}
</script>
</head>
<body>
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Buttons animate as you press them</h1>
	</header>
	<div data-role="content">
		<a href="JavaScript:;" data-role="button" data-inline="true">A</a>
		<a href="JavaScript:;" data-role="button" data-inline="true">B</a>
		<a href="JavaScript:;" data-role="button" data-inline="true">C</a>
	</div>
</section>
<audio id="clickdown-wav" src="ClickDown.wav" preload="auto"></audio>
<script src="Refresh.js"></script>
</body>
</html>
