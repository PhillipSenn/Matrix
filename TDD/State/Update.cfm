<cfscript>
form.StateID = session.TDD.StateID;
form.StateName = 'Updated Test Driven Development';
form.isState = 1;
form.Statehood = DateFormat(now(),"mm/dd/yyyy");
form.StateAbbr = 'xx';
form.Population = 1;
form.DivisionID = 0;
session.State.Save(form);
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
#form.StateID# has been updated to "#form.StateName#".
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>