<cfquery name="qry">
SELECT 
(NTILE(10) OVER(ORDER BY Population)*10) AS Percentile
,*
FROM dbo.TempState#session.ZenGardenSort#
ORDER BY Percentile Desc, StateName
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This is shows the NTILE function.
It breaks the states down into 10 groups sorted by population.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Percentile" text="#Percentile#">
	<cfcol header="Population" text="#Population#">
	<cfcol header="StateName" text="#StateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
