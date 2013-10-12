<cfquery name="qryState">
SELECT StateName,COUNT(CityID) AS Cities
,HowMany=CASE
	WHEN COUNT(CityID)  = 0 THEN 'no cites'
	WHEN COUNT(CityID) <= 200 THEN 'A few cities' 
	WHEN COUNT(CityID)  > 200 AND COUNT(CityID) <= 700 THEN 'LOTS of cities' 
	ELSE 'HUGE'
END
FROM dbo.TempState#session.ZenGardenSort#
LEFT OUTER JOIN dbo.TempCity#session.ZenGardenSort#
ON City_StateID = StateID
GROUP BY StateName
</cfquery>
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example shows counting within the select query, as well as the CASE statement.
<table>
	<thead>
		<tr>
			<th class="sort">State</th>
			<th class="sort">Cities</th>
			<th class="sort">Comment</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td>#StateName#</td>
				<td class="num">#Cities#</td>
				<td>#HowMany#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>2