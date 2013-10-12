<cfset myContent = "
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'CityView'))
DROP View CityView
GO
CREATE VIEW CityView AS
SELECT City.*
,StateView.*
FROM City
JOIN StateView
ON City_StateID = StateID;
SELECT TOP 10 *
FROM CityView
ORDER BY NEWID()
">
<cfquery name="qryCity">
SELECT TOP 10 *
FROM CityView
ORDER BY NEWID()
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>
#myContent#
</pre>
ORDER BY NEWID() is a clever way to get a random sample.
Press refresh to see a different set.
<table>
	<thead>
		<tr>
			<th class="num">CityID</th>
			<th>CityName</th>
			<th>StateName</th>
			<th class="num">isState</th>
			<th>Abbr</th>
			<th>Statehood</th>
			<th class="num">Population</th>
			<th>Division</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td class="num">#CityID#</td>
				<td>#CityName#</td>
				<td>#StateName#</td>
				<td class="num">#isState#</td>
				<td>#StateAbbr#</td>
				<td>#DateFormat(Statehood,"mm/dd/yyyy")#</td>
				<td class="num">#NumberFormat(Population)#</td>
				<td>#DivisionName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
