<cfquery name="qry">
SELECT DivisionName,StateName,SUM(Population) AS Population
FROM dbo.TempState#session.ZenGardenSort#
JOIN dbo.Division
ON State_DivisionID = DivisionID
WHERE Population > 0
GROUP BY GROUPING SETS(DivisionName, StateName)
ORDER BY DivisionName DESC,StateName
</cfquery>
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Grouping sets</h3>
This example totals the population by Division as well as by state.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
