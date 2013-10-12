<cfcomponent>
<cffunction name="Init">
	<cfreturn this>
</cffunction>

<cffunction name="CFM" output="yes">
	<cfset var local = {}>
	
	<cfset local.result = "">
	<cfset local.text = "">
	<cfset local.Pagename = ListFirst(ListLast(cgi.SCRIPT_NAME,"/"),".")>
	<cfset local.myFile = ExpandPath("#local.Pagename#.cfm")>
	<cftry>
		<cffile action="read" file="#local.myFile#" variable="local.text">
		<cfcatch>
		</cfcatch>
	</cftry>
	<cfset local.text = Replace(local.text,"<","&lt;","all")>
	<cfset local.text = ReplaceNoCase(local.text,"##session.ZenGardenSort##",session.ZenGardenSort,"all")>
	<cfset local.text = local.text & Chr(10)>
	<cfset local.result = Replace(local.text,Chr(9),"   ","all")>
	<cfreturn local.result>
</cffunction>
</cfcomponent>