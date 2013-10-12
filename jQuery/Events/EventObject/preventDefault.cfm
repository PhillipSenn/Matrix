<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>preventDefault</h1>
<form>
<select name="StateID">
	<option value="0">Please Select</option>
	<cfloop query="Application.qryState">
		<option value="#StateID#">#StateName#</option>
	</cfloop>
</select>
<input name="Save" type="submit" value="Save">
</form>
This example was largely inspired by "Populate Select boxes" in <a href="http://feeds.feedburner.com/jqueryfordesigners-podcast">jQuery for Designers</a>.
<cfinclude template="/Inc/foot.cfm">
<script src="preventDefault.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>