<form method="post">
	<p>
		<span class="myClass">Anything with class=&quot;myClass&quot; will have a red outline.</span>
	</p>
	<label for="FirstName">First Name:</label>
	<input name="FirstName">
	<label for="Email">Email:</label>
	<input name="Email" type="text">
	<label for="Password">Password:</label>
	<input name="Password">
	<label for="FileName">File name:</label>
	<input name="FileName" type="file">
	<label for="YesNo">Yes or No?</label>
	<input name="YesNo" type="radio" value="1" id="Radio1">Yes
	<input name="YesNo" type="radio" value="0" id="Radio0">No
	<cfinclude template="/Inc/3Checkboxes.cfm">
	<label for="mySelection">Selection:</label>
	<select name="mySelection">
		<option value="1">One</option>
		<option value="2">Two</option>
	</select>
	<p>
		<textarea name="Comments">Comments</textarea>
	</p>
	<p>
		<input name="Save" type="submit" value="Save">
	</p>
	<p>
		<button name="Button1">button</button>
		<button name="Button2" type="button">button type = button</button>
		<input name="Button3" type="button" value="input type = button">
	</p>
</form>