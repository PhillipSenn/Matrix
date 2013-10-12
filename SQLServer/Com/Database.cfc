<cfcomponent>
<cffunction name="Init">
	<cfset Variables.dsn = arguments.dsn>
	<cfreturn this>
</cffunction>

<cffunction name="ExecuteSQL" hint="This function puts arguments.SQLstr in the debug div of the calling page and executes it." output="yes">
	<cfargument name="SQLstr">
	<cfset var local = {}>
	
	#arguments.SQLstr#
	<cfquery name="local.qry" datasource="#Variables.dsn#">
	#PreserveSingleQuotes(arguments.SQLstr)#
	</cfquery>
	<cfreturn local.qry>
</cffunction>
</cfcomponent>