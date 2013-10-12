<cfquery name="qry">
</cfquery>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<cftable query="qry" colheaders="yes" htmltable="yes">
	<cfcol header="Abbr" text="#StateAbbr#">
	<cfcol header="Cities" text="#NumberFormat(Cities)#" align="right">
	<cfcol header="StateName" text="#StateName#">
	<cfcol header="isState" text="#isState#">
	<cfcol header="Statehood" text="#DateFormat(Statehood)#">
	<cfcol header="StateMap" text="#StateMap#">
	<cfcol header="Population" text="#NumberFormat(Population)#" align="right">
	<cfcol header="Division" text="#Division#">
</cftable>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
