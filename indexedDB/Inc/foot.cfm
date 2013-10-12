<cfoutput>
<div id="Print">
</div>
<cfinclude template="/Matrix/Inc/foot.cfm">
<script src="#Application.home.dir#IndexedDB/js/window/IndexedDB.js"></script>
<cfset JavaScriptCode = Application.Source.JavaScript()>
<cfif JavaScriptCode NEQ "">
	<fieldset>
		<legend>JavaScript:</legend>
		<div id="jsSource">#JavaScriptCode#</div>
	</fieldset>
</cfif>
<script src="/Library/js/PrettyPrint/PrettyPrint.js"></script>
<script src="/Library/js/PrettyPrint/Print.js"></script>
</cfoutput>