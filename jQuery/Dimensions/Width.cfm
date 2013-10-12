<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="width.css">
<cfinclude template="/Inc/body.cfm">
<h1>width</h1>
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
	Window Width: <span id="windowwidth"></span>
</div>
<div>
	Box Width: <span id="boxwidth"></span>
</div>
<div>
	Box innerWidth: <span id="boxinnerWidth"></span>
</div>
<div>
	Box outerWidth: <span id="boxouterWidth"></span>
</div>
<div>
	Document Width: <span id="documentwidth"></span>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="width.js"></script>
<cfinclude template="/Inc/End.cfm">
