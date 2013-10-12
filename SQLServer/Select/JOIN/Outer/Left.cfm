<cfset myContent = "
SELECT StateName
,isNull(Cities,0) AS Cities
FROM State
LEFT JOIN (
	SELECT City_StateID
	,Count(*) AS Cities
	FROM City
	GROUP BY City_StateID
) City
ON City_StateID = StateID
ORDER BY Cities
">
<cfquery name="qryCity">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
This includes the states that have no cities.
<table>
	<thead>
		<tr>
			<th>State</th>
			<th class="num">Cities</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td><a href="/Matrix/Assets/xml/#StateName#.xml">#StateName#</a></td>
				<td class="num">#Cities#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
