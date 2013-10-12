<cfquery name="qry">
SELECT CityName,COUNT(*) AS Cities
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
GROUP BY CityName
HAVING Count(*) >= 20
ORDER BY Cities
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Relational division</h3>
What cities are found in at least 20 states?
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="CityName" text="#CityName#">
	<cfcol header="Count" text="#Cities#" align="right">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
