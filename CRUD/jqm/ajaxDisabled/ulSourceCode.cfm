<cfset request.jqm.header = "ColdFusion code to create the html">
<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>
&lt;cfscript>
request.jqm.ajaxEnabled = false;
request.jqm.header = "Mobile CRUD";
include "/Inc/html.cfm";
include "/Inc/body.cfm";
WriteOutput('&lt;ul data-role="listview" data-filter="true">');
for(qry in session.qryState) {
		WriteOutput('&lt;li>');
		WriteOutput('&lt;a href="State.cfm?StateID=" &amp; qry.StateID &amp; ">" &amp; qry.StateName &amp; "&lt;/a>"');
		WriteOutput('&lt;span class="ui-li-count">'' &amp; qry.Cities &amp; ''&lt;/span>');
		WriteOutput('&lt;/li>');
}
WriteOutput('&lt;/ul>');
include "/Inc/foot.cfm";
include "/Inc/End.cfm";
&lt;/cfscript>
</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>