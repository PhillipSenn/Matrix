<cfset request.BaseTemplatePath = GetBaseTemplatePath()>
<cfset request.DirectoryFromPath = GetDirectoryFromPath(request.BaseTemplatePath)>
<cfset request.DirectoryFromPath = Left(request.DirectoryFromPath,Len(request.DirectoryFromPath)-1)>
<cfif StructKeyExists(url,"cssfile")>
	<cfset request.cssfile = url.cssfile>
<cfelse>
	<cfset request.cssfile = ListLast(request.DirectoryFromPath,"\")>
</cfif>
