<cfquery name="qry">
SELECT StateName,CityName
FROM dbo.TempState#session.ZenGardenSort#
CROSS APPLY(
	SELECT TOP 2 CityName
	FROM dbo.TempCity#session.ZenGardenSort#
	WHERE City_StateID = StateID
	ORDER BY CityName
) AS City
ORDER BY StateName
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
This example shows the CROSS APPLY operator, by showing the top 2 cities within each state.<br>
You see: it excludes the District of Columbia and Guam.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="CityName" text="#CityName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
