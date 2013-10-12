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
	<cfset local.text = local.text & Chr(10)>
	<cfset BegPos = 1>
	<cfset EndPos = Find(Chr(10),local.text)>
	<cfloop condition="EndPos GT 0">
		<cfset Line = Mid(local.text,BegPos,EndPos-BegPos+1)>
		<cfset I = FindNoCase('cfinclude template="/Inc/',Line)>
		<cfif I>
			<cfset FileName = Mid(Line,I+25,999)>
			<cfset FileName = ListFirst(FileName,".")>
			<cfif UCase(FileName) EQ "FOOT">
				<cfset Line = "">
				<!---<cfset Line = "&lt;/article>#Chr(10)#&lt;/div>#Chr(10)#">--->
			<cfelse>
				<cfset local.myFile = ExpandPath("/Matrix/HTML/Inc/#FileName#.cfm")>
				<cffile action="read" file="#local.myFile#" variable="local.include">
				<cfset Line = Replace(local.include,"<","&lt;","all")>
			</cfif>
			<cfif UCase(FileName) EQ "BODY">
				<cfset Line = "&lt;/head>#Chr(10)#&lt;body>#Chr(10)#">
			</cfif>
		</cfif>
		<cfset I = FindNoCase(' href="',Line)>
		<cfif I>
			<cfset J = Find('"',Line,I+7)>
			<cfset X = Mid(Line,I+7,J-I-7)>
			<cfset Line = Left(Line,I+6) & '<a href="' & X & '">' & X & '</a>' & Mid(Line,J,999)>
		</cfif>
		<cfset local.result = local.result & Line>
		<cfset BegPos = EndPos + 1>
		<cfset EndPos = Find(Chr(10),local.text,BegPos)>
	</cfloop>
	<cfset local.text = local.result>
	<cfset local.result = "">
	<cfset BegPos = 1>
	<cfset EndPos = Find(Chr(10),local.text)>
	<cfloop condition="EndPos GT 0">
		<cfset Line = Mid(local.text,BegPos,EndPos-BegPos+1)>
		<cfset I = FindNoCase('cfinclude template="/Library/',Line)>
		<cfif I>
			<cfset FileName = Mid(Line,I+29,999)>
			<cfset FileName = ListFirst(FileName,".")>
			<cfset local.myFile = ExpandPath("/Library/#FileName#.cfm")>
			<cffile action="read" file="#local.myFile#" variable="local.include">
			<cfset Line = Replace(local.include,"<","&lt;","all")>
			<cfset Line = Line & Chr(10)>
		</cfif>
		<cfset I = FindNoCase('.js">',Line)>
		<cfif I>
			<cfloop from="#I#" to="1" step="-1" index="J">
				<cfif Mid(Line,J,1) EQ '"'>
					<cfset local.jsFileName = Mid(Line,J+1,I-J+2)>
					<cfset Line = Replace(Line,local.jsFileName,
					'<a href="' & local.jsFileName & '">' & local.jsFileName & '</a>')>
					<cfbreak>
				</cfif>
			</cfloop>
		</cfif>
		<cfset local.result = local.result & Line>
		<cfset BegPos = EndPos + 1>
		<cfset EndPos = Find(Chr(10),local.text,BegPos)>
	</cfloop>
	<cfset local.result = Replace(local.result,Chr(9),"   ","all")>
	<cfreturn local.result>
</cffunction>
</cfcomponent>