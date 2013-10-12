<cfcomponent>
<cffunction name="init">
	<cfreturn this>
</cffunction>

<cffunction name="JavaScript">
	<cfargument name="SCRIPT_NAME" default="#cgi.SCRIPT_NAME#">
	
	<cfset local.result = "">
	<cfset local.Pagename = ListLast(arguments.SCRIPT_NAME,"/")>
	<cfset local.Extension = ListLast(local.Pagename,".")>
	<cfset local.Pagename = Left(local.Pagename,Len(local.Pagename)-Len(local.Extension)-1)>
	<cfset local.myFile = ExpandPath("#local.Pagename#.js")>
	<cftry>
		<cffile action="read" file="#local.myFile#" variable="local.result">
		<cfcatch>
		</cfcatch>
	</cftry>
	<cfset local.result = Replace(local.result,"<","&lt;","all")>
	<cfset local.result = Replace(local.result,Chr(9),"&nbsp;&nbsp;&nbsp;","all")>
	<cfset local.result = Replace(local.result,Chr(10),"<br>","all")>
	<!--- We must include <br> tag to facilitate copy/paste --->
	<cfreturn local.result>
</cffunction>

<cffunction name="CFM" output="yes">
	<cfargument name="SCRIPT_NAME" default="#cgi.SCRIPT_NAME#">
	
	<cfset local.result = "">
	<cfset local.text = "">
	<cfset local.Pagename = ListLast(arguments.SCRIPT_NAME,"/")>
	<cfset local.Extension = ListLast(local.Pagename,".")>
	<cfset local.Pagename = Left(local.Pagename,Len(local.Pagename)-Len(local.Extension)-1)>
	<cfset local.myFile = ExpandPath("#local.Pagename#.cfm")>
	<cftry>
		<cffile action="read" file="#local.myFile#" variable="local.text">
		<cfcatch>
		</cfcatch>
	</cftry>
	<cfset local.text = Replace(local.text,"<","&lt;","all")>
	<!--- Sometimes we want < symbols, but not in the original --->
	<cfset local.text = local.text & Chr(10)>
	<cfset BegPos = 1>
	<cfset EndPos = Find(Chr(10),local.text)>
	<cfloop condition="EndPos GT 0">
		
		<cfset Line = Mid(local.text,BegPos,EndPos-BegPos+1)>
		<cfset I = FindNoCase('cfinclude template="',Line)>
		<cfset local.relevant = true>
		<cfif I>
			<cfset J = FindNoCase(".cfm",Line,I+20)>
			<cfloop from="#J#" to="#I+20#" step="-1" index="K">
				<cfif Mid(Line,K,1) EQ "/">
					<cfbreak>
				</cfif>
			</cfloop>
			<cfset local.FileName = Mid(Line,K+1,J-K+3)>
			<cfif LCase(local.FileName) EQ "html.cfm">
				<cfset local.FileName = "htmlsnip.cfm"> 
				<cfset local.relevant = false>
			<cfelseif LCase(local.FileName) EQ "body.cfm">
				<cfset local.relevant = false>
				<cfset local.FileName = "bodysnip.cfm"> 
			<cfelseif LCase(local.FileName) EQ "foot.cfm">
				<cfset local.relevant = false>
				<cfset local.FileName = "footsnip.cfm"> 
			<cfelseif LCase(local.FileName) EQ "End.cfm">
				<cfset local.FileName = "Endsnip.cfm"> 
				<cfset local.relevant = false>
			</cfif>
			<cfif Mid(Line,I+20,5) EQ "/Inc/">
				<cfset local.myFile = ExpandPath(Application.home.dir & "Inc/#local.FileName#")>
			<cfelse>
				<cfset local.myFile = ExpandPath(Mid(Line,I+20,J-I-16))>
			</cfif>
			<cftry>
				<cffile action="read" file="#local.myFile#" variable="Line">
				<cfcatch>
					<cfset Line = "Error trying to read #local.myFile#">
				</cfcatch>
			</cftry>
			<cfset Line = Replace(Line,"<","&lt;","all")> 
			<cfset Line = Replace(Line,"##Application.home.dir##",Application.home.dir,"all")>
			<!--- Escape < symbol the include file --->
		</cfif>

<!---
This causes a 500 error if the link is: #
--->
		<cfset I = FindNoCase(' href="',Line)>
		<cfloop condition="I GT 0">
			<cfset J = Find('"',Line,I+7)>
			<cfif J>
				<cfset X = Mid(Line,I+7,J-I-7)>
				<cfif NOT FindNoCase('cfoutput',X)>
					<cfset Line = Left(Line,I+6) & '<a href="' & X & '">' & X & '</a>' & Mid(Line,J,999)>
				</cfif>
			</cfif>
			<cfset I = FindNoCase(' href="',Line,J)>
		</cfloop>


		<cfset I = FindNoCase('.js">',Line)>
		<cfloop condition="I GT 0">
			<cfloop from="#I#" to="1" step="-1" index="J">
				<cfif Mid(Line,J,1) EQ '"'>
					<cfset local.jsFileName = Mid(Line,J+1,I-J+2)>
					<cfset Line = Replace(Line,local.jsFileName,
					'<a href="' & local.jsFileName & '">' & local.jsFileName & '</a>')>
					<cfbreak>
				</cfif>
			</cfloop>
			<cfset I = FindNoCase('.js">',Line,I+Len(local.jsFileName)+15)>
		</cfloop>
		<cfif local.relevant>
			<cfset local.result = local.result & '<div class="relevant">' & Line & '</div>'>
		<cfelse>
			<cfset local.result = local.result & '<div>' & Line & '</div>'>
		</cfif>
		<cfset BegPos = EndPos + 1>
		<cfset EndPos = Find(Chr(10),local.text,BegPos)>
	</cfloop>
	<cfset local.result = ReplaceNoCase(local.result,"http://www.google.com/jsapi",
	'<a href="http://www.google.com/jsapi">http://www.google.com/jsapi</a>')>
	<cfset local.result = Replace(local.result,Chr(9),"&nbsp;&nbsp;&nbsp;","all")>
	<cfset local.result = Replace(local.result,Chr(10),"<br>","all")>
	<cfif StructKeyExists(url,"theme")>
		<cfset local.result = Replace(local.result,"##url.theme##",url.theme,"all")>
	</cfif>
	<cfreturn local.result>
</cffunction>

<cffunction name="SQL" output="yes">
	<cfargument name="SCRIPT_NAME" default="#cgi.SCRIPT_NAME#">
	
	<cfset local.result = "">
	<cfset local.text = "">
	<cfset local.Pagename = ListFirst(ListLast(arguments.SCRIPT_NAME,"/"),".")>
	<cfset local.myFile = ExpandPath("#local.Pagename#.cfm")>
	<cftry>
		<cffile action="read" file="#local.myFile#" variable="local.text">
		<cfcatch>
		</cfcatch>
	</cftry>
	<cfset local.text = Replace(local.text,"<","&lt;","all")>
	<cfset local.text = local.text & Chr(10)>
	<cfset local.result = Replace(local.text,Chr(9),"   ","all")>
	<cfreturn local.result>
</cffunction>
</cfcomponent>