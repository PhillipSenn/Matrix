<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="Chooser.css">
<cfinclude template="/Inc/body.cfm">
<h1>Animate</h1>
<p>Select something from the list and it will be placed in the right-hand side.</p>
<div id="available">
	<table>
		<thead>
			<tr>
				<th>Chk</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<input name="Items" type="checkbox" value="1">
				</td>
				<td>
					A
				</td>
			</tr>

			<tr>
				<td>
					<input name="Items" type="checkbox" value="2">
				</td>
				<td>
					B
				</td>
			</tr>

			<tr>
				<td>
					<input name="Items" type="checkbox" value="3">
				</td>
				<td>
					C
				</td>
			</tr>

			<tr>
				<td>
					<input name="Items" type="checkbox" value="4">
				</td>
				<td>
					D
				</td>
			</tr>

			<tr>
				<td>
					<input name="Items" type="checkbox" value="5">
				</td>
				<td>
					E
				</td>
			</tr>

			<tr>
				<td>
					<input name="Items" type="checkbox" value="6">
				</td>
				<td>
					F
				</td>
			</tr>

			<tr>
				<td>
					<input name="Items" type="checkbox" value="7">
				</td>
				<td>
					G
				</td>
			</tr>
		</tbody>
	</table>
</div>
<div id="chosen">
	<ul>
	</ul>
</div>
<cfinclude template="/Inc/foot.cfm">
<script src="Chooser1.js"></script>
<cfinclude template="/Inc/End.cfm">
