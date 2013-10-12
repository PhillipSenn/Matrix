<cfparam name="form.HelloWorldID" default="">
<cfoutput>
<cfinclude template="/Library/html/html.cfm">
<cfinclude template="/Library/Google/min/jQuery.cfm">
<link rel="stylesheet" type="text/css" href="DBLookup.css">
<cfinclude template="/Library/html/body.cfm">
Must be run in Chrome, not Firefox or IE.
<h1>&nbsp;</h1>
<form method="post">
	<input id="HelloWorldName" name="HelloWorldName">
	<input name="HelloWorldID" value="#form.HelloWorldID#">
	<p>
	<button id="Save" type="button">Lookup</button>
	</p>
</form>
<div id="koamtac-id">
	<div id="koamtac-classes">1</div>
	<div class="koamtac-class">
		<div class="koamtac-inputid">HelloWorldName</div>
		<div class="koamtac-clickid">Save</div>
	</div>
</div>
<p>
<a href="JavaScript:;" id="Reset">Reset</a> 
</p>
<cfinclude template="/Library/html/foot.cfm">
<script src="foot.js"></script>
<script src="DBLookup.js"></script>
<cfinclude template="/Library/html/End.cfm">
</cfoutput>