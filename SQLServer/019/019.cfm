<cfquery name="qry">
SELECT NewYork.StateName AS NewYorkStateName, NewYork.CityName AS NewYorkCityName
,NewJersey.StateName as NewJerseyStateName,NewJersey.CityName AS NewJerseyCityName
FROM(
SELECT StateName,CityName
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
WHERE StateName='New York'
) NewYork
FULL OUTER JOIN(
SELECT StateName,CityName
FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
WHERE StateName='New Jersey'
) NewJersey
ON NewYork.CityName = NewJersey.CityName
WHERE NewYork.CityName IS NULL
OR  NewJersey.CityName IS NULL
ORDER BY coalesce(NewYork.CityName,NewJersey.CityName)
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>full set difference</h3>
It compares the city names in New York and New Jersey, only displaying cities where there is not a match.<br>
For instance, Andover is in both states, so you won't see it in the list here.<br>
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="State" text="#NewYorkStateName#">
	<cfcol header="City" text="#NewYorkCityName#">
	<cfcol header="City" text="#NewJerseyCityName#">
	<cfcol header="State" text="#NewJerseyStateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
