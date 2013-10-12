<cfdump var="#form#">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form method="post">
	<textarea name="myTextArea">Press Save to see what fields get submitted.</textarea>
	<textarea name="A" readonly>Read Only</textarea>
	<textarea name="B" disabled readonly>Disabled and Read Only</textarea>
	<input name="Save" type="submit" value="Save">
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>