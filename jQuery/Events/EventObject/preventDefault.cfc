<cfcomponent>
<cfparam name="url.returnformat" default="json">

<cffunction name="WhereStateID" access="remote">
	<cfargument name="StateID">
	<cfset var local = {}>
	
	<cfquery name="local.result.qry">
	SELECT CityID,CityName
	FROM matrix.ZenGardenCity
	WHERE City_StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.StateID#">
	ORDER BY CityName
	</cfquery>
	<cfreturn local.result>
</cffunction>
</cfcomponent>