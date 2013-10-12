<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<fieldset>
	<legend>Option 1</legend>
	<p>
		<input name="Option1" type="checkbox" value="A">A
	</p>
	<p>
		<input name="Option1" type="checkbox" value="B">B
	</p>
	<p>
		<input name="Option1" type="checkbox" class="SelectAll">Select All
	</p>
</fieldset>
<fieldset>
	<legend>Option 2</legend>
	<p>
		<input name="Option2" type="checkbox" value="C">C
	</p>
	<p>
		<input name="Option2" type="checkbox" value="D">D
	</p>
	<p>
		<input name="Option2" type="checkbox" class="SelectAll">Select All
	</p>
</fieldset>
<cfinclude template="/Inc/foot.cfm">
<script src="prop.js"></script>
<cfinclude template="/Inc/End.cfm">
