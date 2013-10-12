<cfcomponent extends="Library.com.Database">
<cffunction name="WhereWName">
	<cfargument name="WName">
	<cfset var local = {}>

	<cftry>
		<cfquery name="local.qry">
		SELECT *
		FROM matrix.MenuView
		WHERE WName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.WName#">
		</cfquery>
		<cfcatch>
			<cfset request.msg = Error(cfcatch)>
		</cfcatch>
	</cftry>
	<cfreturn local.qry>
</cffunction>
</cfcomponent>