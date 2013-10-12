<cfquery name="qry1">
WITH CTE1 AS (
	SELECT City_StateID AS CTE1_StateID
	,COUNT(*) AS Cities
	FROM dbo.TempCity#session.ZenGardenSort#
	GROUP BY City_StateID
),
DivisionCities AS(
	SELECT DivisionName,Cities
	FROM dbo.TempState#session.ZenGardenSort#
	JOIN CTE1
	ON CTE1_StateID = StateID
	JOIN dbo.Division
	ON State_DivisionID = DivisionID
)
SELECT DivisionName,MAX(Cities) AS MaxCities
FROM DivisionCities
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
This query uses a common table expression to first count the cities per state, and then does a second group by to get
the maximum cities per division.
<cftable query="qry1" colheaders="yes" htmltable="yes">
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
