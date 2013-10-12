<cfcomponent extends="Library.com.10.RD">
<cfset Variables.TableName = "State">
<cfset Variables.SortOrder = "StateName">

<cffunction name="getCountCities">
	<cfquery name="local.qry">
	SELECT State.*
	,isNull(CountCities,0) AS CountCities
	FROM State
	LEFT JOIN (
		SELECT City_StateID
		,Count(*) AS CountCities
		FROM City
		GROUP BY City_StateID
	) City
	ON City_StateID = StateID
	ORDER BY StateName
	</cfquery>
	<cfreturn local.qry>
</cffunction>
</cfcomponent>