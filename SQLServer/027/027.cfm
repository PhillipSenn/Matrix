<cfquery name="qry">
SELECT * FROM dbo.TempCity#session.ZenGardenSort#
JOIN dbo.TempState#session.ZenGardenSort#
ON City_StateID = StateID
WHERE EXISTS(
	SELECT * FROM dbo.TempState#session.ZenGardenSort#
	WHERE dbo.TempCity#session.ZenGardenSort#.CityName = StateName
)
ORDER BY CityName,StateAbbr
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h3>Nesting aggregations</h3>
This example uses correlated subqueries to find any city that is a state name.<br>
It shouldn't surprise us to find so many Washingtons, but Wyoming?
Click on a city to see the Google map:
<ul>
<cfloop query="qry">
	<li><a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=#CityName#,+#StateAbbr#">#CityName#, #StateAbbr#</a></li>
</cfloop>
</ul>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
