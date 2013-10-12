<cfset qryState = Application.State.Where()>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th>Filename</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#CurrentRow#</td>
				<td><a href="#StateName#.xml">#StateName#.xml</a></td>
			</tr>
		</cfloop>
	</tbody>
</table>

<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
