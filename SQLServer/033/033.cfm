<cfquery name="qry">
SELECT StateName,(
	SELECT SUM(Population) 
	FROM dbo.TempState#session.ZenGardenSort# AS InnerQuery
	WHERE InnerQuery.StateID <= dbo.TempState#session.ZenGardenSort#.StateID
) AS Population
FROM dbo.TempState#session.ZenGardenSort#
ORDER BY StateID
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
