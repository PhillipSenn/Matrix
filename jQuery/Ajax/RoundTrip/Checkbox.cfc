<cfcomponent>
<cfparam name="url.returnformat" default="json">
<cfparam name="url.queryFormat" default="column">

<cffunction name="WhereStateID" access="remote">
	<cfargument name="StateID">
	<cfset var local = {}>
	<cfset local.result = {}>
	
	<cfset local.result.ERR = false>
	<cfset local.result.MSG = "">
	<cftry>
		<cfquery name="local.result.qry">
		SELECT CityID,CityName
		FROM City
		WHERE City_StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#Val(arguments.StateID)#">
		ORDER BY CityName
		</cfquery>
		<cfcatch>
			<cfset local.result.ERR = true>
			<cfset local.result.MSG = CreateObject("component","Library.com.10.database").Error(cfcatch)>
		</cfcatch>
	</cftry>
	<cfreturn local.result>
</cffunction>

<cffunction name="SQLServerError" access="remote">
	<cfargument name="StateID">
	<cfset var local = {}>
	<cfset local.result = {}>
	
	<cfset local.result.ERR = false>
	<cfset local.result.MSG = "">
	<cftry>
		<cfquery name="local.result.qry">
		SELECT X
		FROM City
		WHERE City_StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#Val(arguments.StateID)#">
		ORDER BY CityName
		</cfquery>
		<cfcatch>
			<cfset local.result.ERR = true>
			<cfset local.result.MSG = CreateObject("component","Library.com.database").Error(cfcatch)>
		</cfcatch>
	</cftry>
	<cfreturn local.result>
</cffunction>

<cffunction name="ColdFusionError" access="remote">
	<cfargument name="StateID">
	<cfset var local = {}>
	<cfset local.result = {}>
	
	<cfset local.result.ERR = false>
	<cfset local.result.MSG = "">
	<cftry>
		<cfquery name="local.result.qry" datasource="X" username="#Application.Username#" password="#Application.Password#">
		SELECT CityID,CityName
		FROM City
		WHERE City_StateID = <cfqueryparam cfsqltype="cf_sql_integer" value="#Val(arguments.StateID)#">
		ORDER BY CityName
		</cfquery>
		<cfcatch>
			<cfset local.result.ERR = true>
			<cfset local.result.MSG = CreateObject("component","Library.com.database").Error(cfcatch)>
		</cfcatch>
	</cftry>
	<cfreturn local.result>
</cffunction>
</cfcomponent>