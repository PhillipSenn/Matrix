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
ORDER BY coalesce(NewYork.CityName,NewJersey.CityName)
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>FULL OUTER JOIN</h3>
City names that are common between New York and New Jersey.<br>
It uses the coalesce function to sort by cityname.<br>
Notice that Andover is common between the two states.<br>
See <a href="../012/Index.cfm">SQL Zen Garden 012</a> for an intersect query.
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="State" text="#NewYorkStateName#">
	<cfcol header="City" text="#NewYorkCityName#">
	<cfcol header="City" text="#NewJerseyCityName#">
	<cfcol header="State" text="#NewJerseyStateName#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
