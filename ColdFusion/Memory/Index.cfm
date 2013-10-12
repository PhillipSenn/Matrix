<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cfinvoke component="cfide.adminapi.administrator" method="login" adminpassword="">

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result">

Total session count = <cfdump var="#result#">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result" cfapplicationname="GetUpAGame">

For app GetUpAGame = <cfdump var="#result#">

<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result" cfapplicationname="LR">

For app LR = <cfdump var="#result#">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result" cfapplicationname="localhost">

For app localhost = <cfdump var="#result#">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result" cfapplicationname="SwatchLabels">

For app SwatchLabels = <cfdump var="#result#">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result" cfapplicationname="Matrix">

For app Matrix = <cfdump var="#result#">

<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getActiveSessionCount" returnvariable="result" cfapplicationname="SwatchDog">

For app SwatchDog = <cfdump var="#result#">

<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getAverageResponseTime" returnvariable="result">

<cfoutput>Average response time is #result#</cfoutput>

<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getMemoryUtilizationSummary" returnvariable="result">
<cfdump var="#result#" label="Memory Utilization">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getHitCountStats" returnvariable="result">
<cfdump var="#result#" label="Hit Count Stats">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getLoggedInUserCount" returnvariable="result">

Logged in users = <cfdump var="#result#">
<p>

<cfinvoke component="cfide.adminapi.servermonitoring" method="getHeartbeat" returnvariable="result">
<cfdump var="#result#" label="Heart Beat">
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>