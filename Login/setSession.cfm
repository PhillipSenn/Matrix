<cfscript>
session.State = CreateObject("component","Matrix.com.State").init(session.qry.UsrID); 
// Every session has a different state table
// So it's best to put state in the session scope.
// Otherwise, we'll be calling Application.state.Read(session.qry.UsrID,StateID) instead of
// session.state.Read(StateID)
session.qryState = session.State.getStatesAndCountCities();
location("/Matrix/Matrix.cfm",false);
</cfscript>
