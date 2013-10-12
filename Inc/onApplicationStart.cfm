<cfoutput>
<cfset Application.City = CreateObject("component","#Application.Home.com#City").init()>
<cfset Application.Source = CreateObject("component","#Application.Home.com#Source").init()>
<cfset Application.State = CreateObject("component","#Application.Home.com#State").init()>
<cfset Application.qryState = Application.State.Where()>
</cfoutput>