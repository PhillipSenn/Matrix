<cfscript>

</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form>
	<fieldset>
		<legend>Legend</legend>
		<div class="form-group">
			<label for="exampleInputEmail">No type="text"</label>
			<input id="exampleInputEmail" placeholder="Enter email">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail">type="text"</label>
			<input type="text" id="exampleInputEmail" placeholder="Enter email">
		</div>
		<a class="btn" href="http://www.google.com" disabled>Disabled</a>
		<a class="btn" href="http://www.google.com">Enabled</a>
		<div class="form-group">
			<label for="exampleInputPassword">Password</label>
			<input type="password" id="exampleInputPassword" placeholder="Password">
		</div>
		<div class="form-group">
			<label for="exampleInputFile">File input</label>
			<input type="file" id="exampleInputFile">
			<p class="help-block">Example block-level help text here.</p>
		</div>
		<div class="checkbox">
			<label>
				<input type="checkbox">
				Check me out </label>
		</div>
		<textarea name="myTextArea">My Text Area</textarea>
		<button type="submit">Submit</button>
		<input type="submit" name="Delete" value="Delete">
		<input type="reset" value="Reset">
		<input name="Save" type="submit" value="Save">
	</fieldset>
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
