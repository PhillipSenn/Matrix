<cfif StructKeyExists(form,"Delete")>
	<cfif form.Cities EQ form.RowsToBeDeleted>
		<cfquery>
		WITH Duplicates AS(
		SELECT CityID,CityName,ROW_NUMBER() OVER (
			PARTITION BY CityName
			ORDER BY CityID
		) AS RowNumber
		FROM dbo.TempCity#session.ZenGardenSort#
		)
		DELETE Duplicates
		WHERE RowNumber > 1
		</cfquery>
		May God have mercy on your soul.
		<cfabort>
	</cfif>
	Nope.
	<cfabort>
</cfif>
<cfquery name="qry">
SELECT CityName,Count(CityName) AS Cities
FROM dbo.TempCity#session.ZenGardenSort#
GROUP BY CityName
HAVING Count(CityName) > 1
</cfquery>
<cfset SumOfCities = ArraySum(qry["Cities"])>
<cfset form.RowsToBeDeleted = SumOfCities - qry.RecordCount>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfform preservedata="yes">
	<h3>ROW_NUMBER() OVER ...</h3>
	There are #qry.RecordCount# cities that have duplicates.<br>
	All added together, that makes #SumOfCities# cities.
	
	<label for="Cities">Q: How many cities will be deleted?</label>
	<cfinput name="Cities">
	<p>
		<cfinput name="Delete" type="submit" value="Delete!">
	</p>
	<p>
		Enter this number as the answer: <cfinput name="RowsToBeDeleted">
	</p>
</cfform>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
