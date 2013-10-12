<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta content="Phillip Senn" name="author">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
</head>
<body>
<h1>inline window.device.name</h1>
<div id="Print">
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="/Inc/js/cordova.js"></script>
<script>
function myDeviceReady() {
	$('body').append('Ready!');
}


if (myDeviceReady) {
	$('body').append('Ready?<br>');
	document.addEventListener("deviceready", myDeviceReady, false);
}
</script>
</body>
</html>
