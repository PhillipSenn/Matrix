<cfset myContent = "
SELECT StateID,StateName,StateName AS SortOrder
FROM State
UNION ALL
SELECT 0,'Please Select',''
ORDER BY SortOrder
">

<cfquery name="qryState">
#PreserveSingleQuotes(myContent)#
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
<form>
	State Name: 
	<select name="StateID">
		<cfloop query="qryState">
			<option value="#StateID#">#StateName#</option>
		</cfloop>
	</select>
</form>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>

