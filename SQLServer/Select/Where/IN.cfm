<cfset myContent = "
SELECT *
FROM State
WHERE StateID IN(
	SELECT DISTINCT City_StateID
	FROM City
	WHERE CityName like '%Charlotte%'
)
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
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#CurrentRow#</td>
				<td>#StateName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>

