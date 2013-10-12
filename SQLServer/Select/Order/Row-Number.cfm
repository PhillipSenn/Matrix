<cfset myContent = "
SELECT *
,ROW_NUMBER() OVER (
	PARTITION BY CityName
	ORDER BY CityID
) AS RowNumber
FROM CityView
WHERE StateName = 'North Carolina'
ORDER BY CityName, CityID
">

<cfquery name="qryCity">
#PreserveSingleQuotes(myContent)#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
Note: This is using a field dynamically created by SQL Server, not the CurrentRow property in ColdFusion.
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th>City</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity" endrow="800">
			<tr>
				<td class="num">#RowNumber#</td>
				<td>#CityName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>	
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
