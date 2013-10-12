<cfquery name="qry">
SELECT StateName,Cities,StateAbbr,isState,Statehood,StateMap,Population,DivisionName
FROM dbo.TempState#session.ZenGardenSort#
JOIN (
	SELECT City_StateID,Count(*) AS Cities
	FROM dbo.TempCity#session.ZenGardenSort#
	GROUP BY City_StateID
) AS X
ON City_StateID = StateID
JOIN dbo.Division
ON State_DivisionID = DivisionID
ORDER BY Cities
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
Embed the aggregate function in a subquery and then include the additional columns in the outer query.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Abbr" text="#StateAbbr#">
	<cfcol header="Cities" text="#NumberFormat(Cities)#" align="right">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="isState" text="#isState#">
	<cfcol header="Statehood" text="#DateFormat(Statehood)#">
	<cfcol header="StateMap" text="#StateMap#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
	<cfcol header="DivisionName" text="#DivisionName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
