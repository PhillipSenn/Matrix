<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<title>jQuery timePicker</title>
<link rel="stylesheet" type="text/css" href="../../Library/jQuery/timePicker/timePicker.css"/>
<style type="text/css">
div {
	margin-top: 3em;
}
input {
	margin: 0;
	padding: 0;
}
body {
	background: #eee;
}
pre {
	background: #fff;
	border: 1px solid #ddd;
	padding: 4px;
}
.error {
	border: 1px solid red;
}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="../../Library/jQuery/timePicker/jquery.timePicker.js"></script>
</head>

<body>
<h1>jQuery timePicker</h1>
<p>A time picker for jQuery inspired by Google Calendar</p>
<p>Get the latest code on Github (the files used on this page might not be the latest): <a href="http://github.com/perifer/timePicker">http://github.com/perifer/timePicker</a>
<div>
	<input type="text" id="time1" size="10" />
</div>
<script type="text/javascript">
$("#time1").timePicker();
</script>
</body>
</html>
