<cfscript>
// form.StateID = session.TDD.StateID;
form.StateName = 'Remote Test Driven Development';
form.isState = 1;
form.Statehood = DateFormat(now(),"mm/dd/yyyy");
form.StateAbbr = 'xx';
form.Population = 1;
form.DivisionID = 0;
result = session.State.REMOTE_Save(
	// form.StateID
	 StateName:StateName
	,isState:isState
	,Statehood:Statehood
	,StateAbbr:StateAbbr
	,Population:Population
	,DivisionID:DivisionID
);
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
Here you can see that result has three structures.<br>
The first is: MSG.<br>
The second is: QRY.<br>
The third is: PREFIX.
<cfdump var="#result#">
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
