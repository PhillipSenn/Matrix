<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>optgroup</h1>
<div data-role="fieldcontain">
	<label for="mySelect">Choose One:</label>
	<select id="mySelect">
		<optgroup label="First Group"		>
			<option value="1">One</option>
			<option value="2">Two</option>
			<option value="3">Three</option>
		</optgroup>
		<optgroup label="Second group">
			<option value="4">Four</option>
			<option value="5">Five</option>
			<option value="6">Six</option>
		</optgroup>
	</select>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
