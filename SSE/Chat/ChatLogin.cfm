<cfif StructKeyExists(form,"UsrID")>
	<cfset session.Chat.UsrID = form.UsrID>
	<cflocation url="Chat.cfm" addtoken="no">
</cfif>
<cfset session.Chat = {}>
<cfif NOT StructKeyExists(Application,"Chat")>
	<cfset Application.Chat = {}>
	<cfset Application.Chat.PostDateTime = []>
	<cfset Application.Chat.UsrID[1] = 1>
	<cfset session.Chat.UsrID = 1>
	<cflocation url="Chat.cfm" addtoken="no">
</cfif>

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<form method="post">
	<label for="UsrID">User ID:</label>
	<select name="UsrID" id="UsrID">
		<cfset Counter = 0>
		<cfloop array="#Application.Chat.UsrID#" index="UsrID">
			<cfset Counter = Counter + 1>
			<option value="#UsrID#">#UsrID#</option>
		</cfloop>
		<option value="#Counter#">#Counter#</option>
	</select>
</form>
<cfinclude template="/Inc/foot.cfm">
<script src="ChatLogin.js"></script>
<cfinclude template="/Inc/End.cfm">
