<cfcomponent>
<cfparam name="url.returnformat" default="json">

<cffunction name="myFunction" access="remote">
	<cfargument name="A">
	<cfargument name="B">
	<cfset local = {}>
	
	<cfset local.result = {}>
	<cfset local.result.rtn = true>
	<cfset local.result.msg = "">
	<cftry>
		<cfset local.result.X = arguments.A / arguments.B>
		<cfcatch>
			<cfset local.result.rtn = false>
			<cfset local.result.msg = cfcatch.Detail> <!--- Division by zero --->
			<cfif local.result.msg EQ "">
				<cfset local.result.msg = cfcatch.Message> <!--- The value cannot be converted to a number. --->
			</cfif>
		</cfcatch>
	</cftry>
	<cfreturn local.result>
</cffunction>
</cfcomponent>