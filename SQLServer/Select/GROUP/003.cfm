<cfset myContent = "
SELECT 
Count(*) AS States
,Sum(Population) AS Population
,Avg(Population) AS AvgPopulation
FROM State
WHERE Population > 0
">
<cfquery name="qryCity">
#myContent#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
<table>
	<thead>
		<tr>
			<th class="num">States</th>
			<th class="num">Total Population</th>
			<th class="num">Average</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td class="num">#States#</td>
				<td class="num">#NumberFormat(Population)#</td>
				<td class="num">#NumberFormat(AvgPopulation)#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<a href="http://2010.census.gov/2010census/data/">census.gov</a> includes Puerto Rico and the District of Columbia.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
