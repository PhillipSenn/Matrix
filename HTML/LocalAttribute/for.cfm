<cfdump var="#form#">
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form method="post">
	<label for="id1" class="checkbox">One
		<input id="id1" name="X" type="checkbox" value="ONE">
	</label>
	<label for="id2" class="checkbox">Two
		<input id="id2" name="X" type="checkbox" value="TWO">
	</label>
	<label for="id3" class="checkbox">Three
		<input id="id3" name="X" type="checkbox" value="THREE">
	</label>
	<p>
		<input name="Save" type="submit" value="Save">
	</p>
</form>
<aside>
<p>
	Notice that the 3 checkboxes all have the same name
	because checkboxes are submitted as a list of which ones were checked.
	But each one of them has an identifier for the label associated with it.
</p>
<p>
	Notice that if you submit the form without any checkboxes checked,
	you get nothing - nada - zip.  Null.
</p>
</aside>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
