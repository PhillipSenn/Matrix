<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="td.css">
<cfinclude template="/Inc/body.cfm">
<table class="border">
	<thead>
		<tr>
			<th>A</th>
			<th>B</th>
			<th>C</th>
			<th>D</th>
			<th>E</th>
			<th>F</th>
			<th>G</th>
			<th>H</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>&nbsp;</td>
			<td class="myClass">X</td>
			<td class="myClass">X</td>
			<td>&nbsp;</td>
			<td class="myClass">X</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td class="myClass">X</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="myClass">X</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td class="myClass">X</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
<p>If you click on a cell, where the previous sibling has class=&quot;myClass&quot;, then the previous sibling will be highlighted.</p>
<p>
	<cfinclude template="/Inc/foot.cfm">
	<script src="PrevSelector.js"></script>
	<cfinclude template="/Inc/End.cfm">
</p>
