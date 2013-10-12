<cfquery name="qryState">
SELECT DivisionName,StateName,Population
FROM dbo.TempState#session.ZenGardenSort#
JOIN dbo.Division
ON State_DivisionID = DivisionID
WHERE DivisionName <> ''
ORDER BY DivisionName,StateName
</cfquery>

<cfquery name="qryPivot">
SELECT [East North Central] AS EastNorthCentral
,[East South Central] AS EastSouthCentral
,[Middle Atlantic] AS MiddleAtlantic
,[Mountain]
,[New England] AS NewEngland
,[Pacific]
,[South Atlantic] AS SouthAtlantic
,[West North Central] AS WestNorthCentral
,[West South Central] AS WestSouthCentral
FROM(
	SELECT DivisionName,Population
	FROM dbo.TempState#session.ZenGardenSort#
	JOIN dbo.Division
	ON State_DivisionID = DivisionID
	WHERE DivisionName <> '') up
PIVOT(SUM(Population) FOR DivisionName IN(
[East North Central],[East South Central],[Middle Atlantic],[Mountain],[New England],[Pacific],[South Atlantic],[West North Central],[West South Central])) AS PVT
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>PIVOT</h3>
Here is the data in it's raw form:
<table>
	<thead>
		<tr>
			<th>Division</th>
			<th>State</th>
			<th>Population</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td>#DivisionName#</td>
				<td>#StateName#</td>
				<td class="num">#NumberFormat(Population)#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<p>
	And here it is after it's been PIVOTed:
</p>
<table>
	<thead>
		<tr>
			<th>East North Central</th>
			<th>East South Central</th>
			<th>Middle Atlantic</th>
			<th>Mountain</th>
			<th>New England</th>
			<th>Pacific</th>
			<th>South Atlantic</th>
			<th>West North Central</th>
			<th>West South Central</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryPivot">
			<tr>
				<td class="num">#Numberformat(EastNorthCentral)#</td>
				<td class="num">#Numberformat(EastSouthCentral)#</td>
				<td class="num">#Numberformat(MiddleAtlantic)#</td>
				<td class="num">#Numberformat(Mountain)#</td>
				<td class="num">#Numberformat(NewEngland)#</td>
				<td class="num">#Numberformat(Pacific)#</td>
				<td class="num">#Numberformat(SouthAtlantic)#</td>
				<td class="num">#Numberformat(WestNorthCentral)#</td>
				<td class="num">#Numberformat(WestSouthCentral)#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>


