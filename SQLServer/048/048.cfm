<cfquery name="qry">
SELECT Count(*) AS Rows, Count(Distinct CityName) AS DistinctCities
FROM dbo.TempCity#session.ZenGardenSort#
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
Count of the City table along with distinct city names.
<cftable query="qry" colheaders="yes" htmltable="yes" maxrows="10">
	<cfcol header="Count" text="#Rows#">
	<cfcol header="Distinct Cities" text="#DistinctCities#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
