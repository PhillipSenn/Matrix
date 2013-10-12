<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<label for="TestID">TestID:</label>
<input name="TestID" value="4">
<div class="form-actions">
	<input type="button" name="Save" value="Read">
</div>
<label for="TestSort">Sort:</label>
<input name="TestSort">
<cfinclude template="/Inc/foot.cfm">
<script src="Sync.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>