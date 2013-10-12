<cfscript>
form.StateName = 'Test Driven Development';
form.isState = 1;
form.Statehood = DateFormat(now(),"mm/dd/yyyy");
form.StateAbbr = 'xx';
form.Population = 1;
form.DivisionID = 0;
qryState = session.State.Save(form);
session.TDD.StateID = qryState.StateID;
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
#session.TDD.StateID# has been created.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>