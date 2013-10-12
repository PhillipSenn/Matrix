<cfscript>
form.StateID = session.TDD.StateID;
form.StateName = 'Remote Test Driven Development Updated';
form.isState = 1;
form.Statehood = DateFormat(now(),"mm/dd/yyyy");
form.StateAbbr = 'xx';
form.Population = 1;
form.DivisionID = 0;
obj = CreateObject("component","/Matrix/com/State").REMOTE_Save(
	 StateID:StateID
	,StateName:StateName
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
#form.StateID# has been updated to "#form.StateName#".
<cfdump var="#request.Prefix#">
<cfdump var="#obj#">
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
