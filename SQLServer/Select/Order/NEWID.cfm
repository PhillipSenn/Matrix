<cfset myContent = "
SELECT *
FROM State
ORDER BY NEWID()
">
<cfquery name="qryState">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
<table>
	<thead>
		<tr>
			<th class="num">StateID</th>
			<th>State Name</th>
			<th class="num">isState</th>
			<th>Statehood</th>
			<th>StateAbbr</th>
			<th>State Map</th>
			<th class="num">Population</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#StateID#</td>
				<td>#StateName#</td>
				<td class="num">#isState#</td>
				<td>#DateFormat(Statehood,"mm/dd/yyyy")#</td>
				<td>#StateAbbr#</td>
				<td>#StateMap#</td>
				<td class="num">#NumberFormat(Population)#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
