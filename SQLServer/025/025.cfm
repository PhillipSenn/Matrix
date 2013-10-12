<cfquery name="qry2">
SELECT DivisionName,MAX(Cities) AS MaxCities 
FROM(
	SELECT StateID,DivisionName,Cities
	FROM dbo.TempState#session.ZenGardenSort#
	JOIN (
		SELECT City_StateID
		,COUNT(*) AS Cities
		FROM dbo.TempCity#session.ZenGardenSort#
		GROUP BY City_StateID
	) X
	ON City_StateID = StateID
	JOIN dbo.Division
	ON State_DivisionID = DivisionID
) AS CountOfCitiesPerState
GROUP BY DivisionName
</cfquery>

<cfquery name="qry3">
SELECT DivisionName,StateName,Count(*) AS MaxCities
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
JOIN dbo.Division
ON State_DivisionID = DivisionID
GROUP BY DivisionName,StateName
ORDER BY DivisionName,StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Nesting aggregations</h3>
<p>This is the same as the previous example except it uses subqueries instead of common table expressions:</p>
<cftable query="qry2" colheaders="yes" htmltable="yes">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="Cities" text="#NumberFormat(MaxCities)#" align="right">
</cftable>
<p>To verify that the numbers are coming out correct, here is the raw data:</p>
<cftable query="qry3" colheaders="yes" htmltable="yes">
	<cfcol header="DivisionName" text="#DivisionName#">
	<cfcol header="State" text="#StateName#">
	<cfcol header="Cities" text="#NumberFormat(MaxCities)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
