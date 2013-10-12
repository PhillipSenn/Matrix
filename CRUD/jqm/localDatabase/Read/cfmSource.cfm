<cfset request.jqm.header = "ColdFusion Source code">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>
&lt;cfscript>
request.jqm.header = "Web SQL Database";

include "/Inc/html.cfm";
include "/Inc/body.cfm";
WriteOutput('&lt;ul data-filter="true" id="StatesListView">');
WriteOutput('&lt;/ul>');
include "/Inc/foot.cfm";
WriteOutput('&lt;script src="Read.js">&lt;/script>');
include "/Inc/End.cfm";
&lt;/cfscript>
</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>