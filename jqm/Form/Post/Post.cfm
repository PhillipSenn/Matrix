<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form action="PostAction.cfm">
	<label for="FirstName">First Name:</label>
	<input name="FirstName" autofocus>
	<input type="submit" name="Save" value="Save">
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
