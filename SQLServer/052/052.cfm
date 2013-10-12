<cfif StructKeyExists(form,"Delete")>
	<cfif form.Cities EQ form.RowsToBeDeleted>
		<cfquery>
		DELETE dbo.TempCity#session.ZenGardenSort# WHERE EXISTS(
			SELECT * FROM dbo.TempCity#session.ZenGardenSort# AS D1
			WHERE D1.CityName = dbo.TempCity#session.ZenGardenSort#.CityName
			AND D1.CityID > dbo.TempCity#session.ZenGardenSort#.CityID
		)
		</cfquery>
		May God have mercy on your soul.
		<cfabort>
	</cfif>
	Nope.
	<cfabort>
</cfif>

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfquery name="qry">
SELECT CityName,Count(CityName) AS Cities
FROM dbo.TempCity#session.ZenGardenSort#
GROUP BY CityName
HAVING Count(CityName) > 1
</cfquery>
<cfset SumOfCities = ArraySum(qry["Cities"])>
<cfset form.RowsToBeDeleted = SumOfCities - qry.RecordCount>
<cfoutput>
<cfform preservedata="yes">
	This will DELETE duplicate city names.<br>
	There are #qry.RecordCount# cities that have duplicates.<br>
	All added together, that makes #SumOfCities# cities.

	<p>Q: So how many cities will be deleted?
	<cfinput name="Cities">
	</p>
	<div id="action">
		<cfinput name="Delete" type="submit" value="Delete!">
	</div>
	<cfinput name="RowsToBeDeleted" type="hidden">
</cfform>
This page inspired by SQL Server Bible 2008, page 386.
</cfoutput>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
