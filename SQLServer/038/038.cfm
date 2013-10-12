<cfquery name="qry">
DECLARE @State Table(
StateID Int Identity Primary Key,
StateName Varchar(128),
Population Int,
Cities Int default 2,
AvgPerCity AS Population/Cities
)
INSERT INTO @State(StateName,Population,Cities)
SELECT Statename,Population,Cities
FROM dbo.TempState#session.ZenGardenSort#
JOIN(
	SELECT City_StateID,Count(*) AS Cities
	FROM dbo.TempCity#session.ZenGardenSort#
	GROUP BY City_StateID
) AS X
ON City_StateID = StateID
SELECT AvgPerCity,StateName,Population,Cities 
FROM @State
ORDER BY AvgPerCity;
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>This example shows a computed column: AvgPerCity</p>
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="AvgPerCity" text="#AvgPerCity#">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
	<cfcol header="Cities" text="#Cities#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
