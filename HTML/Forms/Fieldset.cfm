<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="/Library/CSS/label.css">
<cfinclude template="/Inc/body.cfm">
<fieldset>
	<legend>Contact Info</legend>
	<form>
		<label for="FirstName">First Name:</label>
		<input name="FirstName">
		<label for="LastName">Last Name:</label>
		<input name="LastName">
		<p>
			<input name="Save" type="submit" value="Save">
		</p>
	</form>
</fieldset>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
