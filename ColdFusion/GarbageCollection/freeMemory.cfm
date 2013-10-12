<cfset runtime = CreateObject("java","java.lang.Runtime").getRuntime()>
<cfset freeMemory = runtime.freeMemory() / 1024 / 1024>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
freeMemory: #freeMemory#
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
