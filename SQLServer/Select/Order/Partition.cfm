<cfset myContent = "
SELECT StateName
,Count(*) OVER(PARTITION BY StateID) AS Cities
FROM CityView
">

<cfquery name="qryCity">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
I'm not comfortable with the keyword verb yet.
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th>State</th>
			<th class="num">Cities</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity" endrow="800">
			<tr>
				<td class="num">#CurrentRow#</td>
				<td>#StateName#</td>
				<td class="num">#Cities#</td>
			</tr>
		</cfloop>
	</tbody>
</table>	
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
