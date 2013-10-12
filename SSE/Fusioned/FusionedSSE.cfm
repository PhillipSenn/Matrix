<cfheader name="Content-Type" value="text/event-stream; charset=utf-8">
<cfset n = Chr(10)>

<cfset mySleep = Rand()*10000>
<cfthread action="sleep" duration="#mySleep#"></cfthread>
<cfoutput>
retry:1000#n#
data:After #mySleep# milliseconds, I woke up.  It is now: #DateFormat(now(),"yyyy/mm/dd")# #TimeFormat(now(), "hh:mm:ss tt")#.#n#
#n#
</cfoutput>
