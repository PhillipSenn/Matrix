<!---
http://www.9nit.com/javascript/html5-web-sql-transactions-skipped-without-error-when-touch-triggered-in-ios-2727.html
--->
<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="9nit.css">
<cfinclude template="/Inc/body.cfm">
<form id="form1" onSubmit="return false">
<div id="test" class="number">
	<button onClick="stop()">Stop</button>
</div>
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="9nit.js"></script>
<cfinclude template="/Inc/End.cfm">
