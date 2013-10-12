<!--- http://www.census.gov/population/socdemo/migration/90pob.csv --->
<cfquery name="qry">
SELECT StateName,Population,
CAST(Population AS REAL)/(
SELECT Sum(Population)
FROM dbo.TempState#session.ZenGardenSort#
)*100 AS PercentPopulation
FROM dbo.TempState#session.ZenGardenSort#
ORDER BY Population DESC
</cfquery>
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Scalar subquery</h3>
This example shows the percent of total population for each state.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="Population" text="#NumberFormat(Population)#">
	<cfcol header="Percent" text="#NumberFormat(PercentPopulation,'99.0')#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
