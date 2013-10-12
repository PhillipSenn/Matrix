<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Disabled</h1>
<form>
	<label for="A">Alpha</label>
	<input name="A">
	<p>
		<input name="B" disabled value="This is disabled">
	</p>
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="Disabled.js"></script>
<cfinclude template="/Inc/End.cfm">
