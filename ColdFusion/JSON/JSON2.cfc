<cfcomponent>
<cffunction name="Save" access="remote">
	<cfargument name="myData">
	<cfset local.result = toString(getHttpRequestData().content)>
	
	<cfif isJSON( local.result )>
		<cfdump var="#deserializeJSON(local.result)#" label="HTTP Body">
	</cfif>
</cffunction>
</cfcomponent>