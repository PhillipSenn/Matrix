<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="pie.css" type="text/css" media="screen" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js" type="text/javascript"></script>
<script src="pie.js"></script>
</head>
<body>
<h1>CSS3 pie graph timer with jquery</h1>
<p>Credits to <a href="http://atomicnoggin.ca/blog/2010/02/20/pure-css3-pie-charts/" target="_blank">atomicnoggin</a> for original CSS3 pie graph code.</p>
<p>Changed to em's so you just change the font-size in the timer class and everything will resize accordingly.</p>
<h2>Size</h2>
<p>
	<input type="button" id="size" value="Set timer to" />
	<input type="text" id="size" size="2" value="40" />
	px</p>
<h2>Set percent</h2>
<p>
	<input type="button" id="percent" value="Set timer to" />
	<input type="text" id="percent" size="2" value="35" />
	%</p>
<h2>Stop watch</h2>
<p>
	<input type="button" id="watch" value="Start" />
	count down from
	<input type="text" id="watch" size="2" value="10" />
	seconds</p>
<div class="timer"></div>
<div class="timer fill"></div>
<p><a href="http://blakek.us/css3-pie-graph-timer-with-jquery/">Back to discussion</a></p>
</body>
</html>
