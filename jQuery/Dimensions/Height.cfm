<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="Height.css">
<cfinclude template="/Inc/body.cfm">
<h1>height</h1>
<div id="box">
Here are the css rules for this box:
<pre>
	margin-top:10px;
	margin-right:20px;
	margin-bottom:30px;
	margin-left:40px;
	border-top:10px;
	border-right:20px;
	border-bottom:30px;
	border-left:40px;
	border-top-color:#F00;
	border-right-color:#0F0;
	border-bottom-color:#00F;
	border-left-color:#FF0;
	border-style:solid;
	padding-top:10px;
	padding-right:20px;
	padding-bottom:30px;
	padding-left:40px;
</pre>
<div>
	Window Height: <span id="windowheight"></span>
</div>
<div>
	Box Height: <span id="boxheight"></span>
</div>
<div>
	Box innerHeight: <span id="boxinnerHeight"></span>
</div>
<div>
	Box outerHeight: <span id="boxouterHeight"></span>
</div>
<div>
	Document Height: <span id="documentheight"></span>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="height.js"></script>
<cfinclude template="/Inc/End.cfm">
