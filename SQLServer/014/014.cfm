<cfquery name="qry1">
SELECT 
CASE GROUPING(DivisionName)
WHEN 0 THEN DivisionName
ELSE '<strong>All Divisions</strong>'
END AS DivisionName,
SUM(Population) AS Population
FROM dbo.TempState#session.ZenGardenSort#
JOIN dbo.Division
ON State_DivisionID = DivisionID
WHERE Population > 0
GROUP BY ROLLUP(DivisionName);
</cfquery>
<cfquery name="qry2">
SELECT 
CASE GROUPING(DivisionName)
WHEN 0 THEN DivisionName
ELSE '<strong>All Divisions</strong>'
END AS DivisionName,
CASE GROUPING(StateName)
WHEN 0 THEN StateName
ELSE '<strong>SubTotal</strong>'
END AS StateName,
COUNT(*) AS Cities
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
JOIN dbo.Division
ON State_DivisionID = DivisionID
GROUP BY ROLLUP(DivisionName,StateName);
</cfquery>


<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>GROUP BY Rollup()</h3>
Notice the last line, which was produced by SQL Server.
<cftable query="qry1" colheaders="yes" htmltable="yes">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
</cftable>
<p>
And here's a GROUP BY ROLLUP(Division,StateName) showing the number of cities by state with subtotals by division:
</p>
<cftable query="qry2" colheaders="yes" htmltable="yes">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="State" text="#StateName#">
	<cfcol header="Cities" text="#NumberFormat(Cities)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
