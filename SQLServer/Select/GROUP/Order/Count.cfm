<cfset myContent = "
SELECT StateName
,Count(*) AS Cities
FROM CityView
GROUP BY StateName
ORDER BY Count(*)
">
<cfquery name="qryCity">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
But notice that this didn't get States with 0 cities (District of Columbia, Guam, Puerto Rico). 
That's because we're starting with the City table, which doesn't contain any cities from those 'states'.
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
