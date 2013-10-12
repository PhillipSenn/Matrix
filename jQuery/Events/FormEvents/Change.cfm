<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Change</h1>
<form>
	<table class="border">
		<tr>
			<td>Input type</td>
			<td>Example</td>
			<td>Change Occurs</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;radio&quot;&gt;</td>
			<td>
			<input name="RadioBtn" type="radio" value="1">One
			<input name="RadioBtn" type="radio" value="2">Two
			</td>
			<td>immediately</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;checkbox&quot;&gt;</td>
			<td><input name="myCheckbox" type="checkbox" value="3"></td>
			<td>immediately</td>
		</tr>
		<tr>
			<td>&lt;select&gt;</td>
			<td>
			<select name="mySelect">
				<option value="4">Four</option>
				<option value="5">Five</option>
			</select>
			</td>
			<td>immediately</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;text&quot;&gt;</td>
			<td><input name="myText"></td>
			<td>blur and difference</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;password&quot;&gt;</td>
			<td><input name="myPassword" type="password"></td>
			<td>blur and difference</td>
		</tr>
		<tr>
			<td>&lt;textarea&gt;</td>
			<td><textarea name="myTextArea"></textarea></td>
			<td>Doesn't fire</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;submit&quot;&gt;</td>
			<td><input type="submit" name="mySubmit"></td>
			<td>Doesn't fire</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;button&quot;&gt;</td>
			<td><input type="button" name="myInputButton" value="myInputButton"></td>
			<td>Doesn't fire</td>
		</tr>
		<tr>
			<td>&lt;button&gt;&lt;/button&gt;</td>
			<td><button name="myButton">myButton</button></td>
			<td>Doesn't fire</td>
		</tr>
		<tr>
			<td>&lt;input type=&quot;reset&quot;&gt;</td>
			<td><input name="myReset" type="reset"></td>
			<td>Doesn't fire</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="Change.js"></script>
<cfinclude template="/Inc/End.cfm">
