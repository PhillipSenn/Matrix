<cfset qryMain = Application.Main.View1()>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table class="border">
	<thead>
		<tr>
			<th>Main</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryMain">
			<tr>
				<td><a href="Div.cfm?MainID=#MainID#">#NumberFormat(MainSort,"000")#</a></td>
				<td>#MainDesc#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/end.cfm">
</cfoutput>
