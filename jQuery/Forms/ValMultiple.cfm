<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<select name="SelectMultiple" multiple>
	<option value="1">One</option>
	<option value="2">Two</option>
	<option value="3">Three</option>
</select>
<div>
You chose:
<span id="choice"></span>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="ValMultiple.js"></script>
<cfinclude template="/Inc/End.cfm">
