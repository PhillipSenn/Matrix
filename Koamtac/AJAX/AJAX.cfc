<cfcomponent extends="Library.com.CRUD">
<cfparam name="url.returnformat" default="json">
<cfparam name="url.queryFormat" default="column">

<cffunction name="Save" access="remote">
	<cfset var local = {}>
	<cfset local.result = {}>
	
	<cfset local.result.ERR = false>
	<cfset local.result.MSG = "">
	<cftry>
	
		<cfquery>
		INSERT INTO matrix.Distillery(Location,Temperature) VALUES
		(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Location#">
		,<cfqueryparam cfsqltype="cf_sql_integer" value="#val(arguments.Temperature)#">
		)
		</cfquery>
		<cfcatch>
			<cfset local.result.ERR = true>
			<cfset local.result.MSG = Error(cfcatch)>
		</cfcatch>
	</cftry>
	<cfreturn local.result>
</cffunction>

</cfcomponent>