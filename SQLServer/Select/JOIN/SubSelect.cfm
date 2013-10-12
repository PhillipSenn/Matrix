<cfset myContent = "
SELECT *
FROM State
JOIN (
	SELECT City_StateID,CityName
	FROM City
	WHERE CityName like '%Charlotte%'
	GROUP BY City_StateID,CityName
) City
ON City_StateID = StateID
ORDER BY StateName
">

<cfquery name="qryState">
#PreserveSingleQuotes(myContent)#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>

All the states that have a city with the name "Charlotte" in the City Name.
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th>StateName</th>
			<th>City</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#CurrentRow#</td>
				<td>#StateName#</td>
				<td>#CityName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>

