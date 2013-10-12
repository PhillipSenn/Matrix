<cfcomponent>
<cffunction name="Save" access="remote">
	<cfargument name="Items">
	<cfset var local = {}>

	<cfquery>
	INSERT INTO lru.Item(ItemNo,ItemName) VALUES(1,'#arguments.Items#')
	</cfquery>
</cffunction>
</cfcomponent>