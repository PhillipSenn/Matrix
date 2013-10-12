<cfscript>
StructDelete(session,"qry");
StructDelete(session,"State");
StructDelete(session,"qryState");
cookie.UsrID = {value:1,Expires:"now"};
// location("/Matrix/Matrix.cfm",false);
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
You've been signed out.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>