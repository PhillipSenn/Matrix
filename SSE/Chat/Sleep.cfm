<cfparam name="session.Chat.ReadDateTime" default="0">

<cfif NOT StructKeyExists(Application,"Chat")>
	result = "status:-1">
<cfelseif NOT StructKeyExists(session,"Chat")>
	result = "status:-3">
<cfelse>
	<cfset StartTime = now()>
	<cfset result = "status:0">
	<cfloop condition="DateDiff("s",starttime,now()) lt 30">
		<cfloop array="#Application.Chat.PostDateTime#" index="PostDateTime">
			<cfelseif PostDateTime GT session.Chat.ReadDateTime>
				<cfset session.Chat.ReadDateTime = now()> <!--- The last time we heard from anyone --->
				<cfset result = "status:1">
				<cfbreak>
			</cfif>
		</cfloop>
		<cfthread action="sleep" duration="1000"> <!--- milliseconds --->
		</cfthread>
	</cfloop>
</cfif>
<cfoutput>
data:{#result#}#Chr(10)##Chr(10)#
</cfoutput>