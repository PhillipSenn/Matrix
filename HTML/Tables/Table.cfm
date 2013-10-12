<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="/Library/CSS/Table.border.css">
<cfinclude template="/Inc/body.cfm">
<table>
	<caption>Table caption goes here</caption>
	<thead>
		<tr>
			<th>head 1</th>
			<th>head 2</th>
			<th>head 3</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td>foot 1</td>
			<td>foot 2</td>
			<td>foot 3</td>
		</tr>
	</tfoot>
	<tbody>
		<tr>
			<td>table data 1,1</td>
			<td colspan="2">table data 1,2 &amp;1,3</td>
		</tr>
		<tr>
			<td>table data 2,1</td>
			<td>table data 2,2</td>
			<td>table data 2,3</td>
		</tr>
		<tr>
			<td>table data 3,1</td>
			<td>table data 3,2</td>
			<td rowspan="2">table data <br>
			3,3 &amp; 4,3</td>
		</tr>
		<tr>
			<td>table data 4,1</td>
			<td>table data 4,2</td>
		</tr>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">

