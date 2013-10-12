<cfset myContent = "
SELECT StateName,CityName,Count(CityName) AS Cities
FROM CityView
GROUP BY StateName,CityName
HAVING Count(CityName) > 1
ORDER BY Count(CityName) DESC,StateName,CityName
">
<cfquery name="qryCity">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
<h3>Finding duplicates</h3>
This shows that there were duplicates in the original xml files.
You can use this as a sub-select to delete duplicates.
<table>
	<thead>
		<tr>
			<th>State</th>
			<th>City</th>
			<th>Count</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td><a href="#Application.home.dir#Assets/xml/#StateName#.xml">#StateName#</a></td>
				<td>#CityName#</td>
				<td class="num">#Cities#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
