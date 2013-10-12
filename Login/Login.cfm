<cfif StructKeyExists(cookie,"UsrID")>
	<cflocation url="/Matrix/Login/LoginAction.cfm" addtoken="no">
</cfif>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Login</h1>
Which user would you like to be?
<ol>
<cfloop from="1" to="20" index="I">
	<li><a href="JavaScript:;">User #I#</a></li>
</cfloop>
</ol>
<cfinclude template="/Inc/foot.cfm">
<script src="/Matrix/Login/Login.js"></script>
<cfinclude template="/Inc/End.cfm">
</cfoutput>