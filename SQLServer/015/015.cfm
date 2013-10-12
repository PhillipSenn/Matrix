<cfquery name="qryCount">
SELECT COUNT(*) AS Cities
FROM dbo.TempCity#session.ZenGardenSort#
</cfquery>
<cfquery name="qry">
SELECT TOP(1) Percent CityName,StateName
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
ORDER BY CityName, StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>TOP(x) Percent</h3>
There are #NumberFormat(qryCount.Cities)# cities in dbo.TempCity#session.ZenGardenSort#.
<p>
Here are the top 1 percent:
</p>
<ol>
<cfloop query="qry">
	<li>#CityName#, #StateName#</li>
</cfloop>
</ol>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
