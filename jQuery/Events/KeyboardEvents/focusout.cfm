<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>.focusout( handler(eventObject) )</h1>
<form>
	Including bubbling
	<input name="IncludeBubbling" type="checkbox" checked>
</form>
<cfinclude template="/Inc/form.cfm">

<cfinclude template="/Inc/foot.cfm">
<script src="focusout.js"></script>
<cfinclude template="/Inc/End.cfm">
