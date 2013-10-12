<cfquery name="qry">
SELECT CityName
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
WHERE StateName = 'New York'
INTERSECT
SELECT CityName
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
WHERE StateName = 'New Jersey'
ORDER BY CityName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>INTERSECT</h3>
City names that are common between New York and New Jersey:
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="CityName" text="#CityName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
