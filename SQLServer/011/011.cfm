<cfquery name="qryGroupBy">
SELECT StateID,StateName
,Count(*) AS CountOfCities
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
GROUP BY StateID,StateName
ORDER BY StateID
</cfquery>

<cfquery name="qry">
SELECT City_StateID AS StateID
,Count(*) OVER(PARTITION BY City_StateID) AS CountOfCities
FROM dbo.TempCity#session.ZenGardenSort#	 
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>OVER(PARTITION BY ...)</h3>
maxrows="3"
<cftable query="qryGroupBy" colheaders="yes" htmltable="yes" maxrows="3">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="CountOfCities" text="#CountOfCities#">
</cftable>
<p>
maxrows="800"
<cftable query="qry" colheaders="yes" htmltable="yes" maxrows="800">
	<cfcol header="Row" text="#CurrentRow#">
	<cfcol header="StateID" text="#StateID#">
	<cfcol header="CountOfCities" text="#CountOfCities#">
</cftable>
</p>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
