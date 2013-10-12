<cfcomponent>
    <cffunction name="addData" access="remote" returntype="string" >
        <cfargument name="dataArray" type="array" />

        <cfset var result = "" />

        <cfloop array="#arguments.dataArray#" index="i" >
            <cfset result = result & "R: " & i & ", " />
        </cfloop>

        <cfreturn result />

    </cffunction>
</cfcomponent>