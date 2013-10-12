<cfinclude template="/Inc/html.cfm">
</head>
<body onafterprint="myAfterPrint();">
<div id="container">
<article id="example">
If you are using Internet Explorer, then print preview this page and an alert box will pop up.
<cfinclude template="/Inc/foot.cfm">
<script src="onafterprint.js"></script>
<cfinclude template="/Inc/End.cfm">
