<cfset myContent = "
SELECT Count(*) AS Rows
,Count(Distinct CityName) AS DistinctCities
FROM City
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
			<th class="num">Rows</th>
			<th class="num">DistinctCities</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td class="num">#Rows#</td>
				<td class="num">#DistinctCities#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
