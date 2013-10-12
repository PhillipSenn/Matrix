<cfset myContent = "
SELECT StateName
,Min(CityName) AS MinCityName
,Max(CityName) AS MaxCityName
,Count(*) AS Cities
FROM CityView
GROUP BY StateName
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
			<th>State</th>
			<th class="num">Cities</th>
			<th>Min City Name</th>
			<th>Max City Name</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td><a href="/Dropbox/Matrix/Assets/xml/#StateName#.xml">#StateName#</a></td>
				<td class="num">#Cities#</td>
				<td>#MinCityName#</td>
				<td>#MaxCityName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
