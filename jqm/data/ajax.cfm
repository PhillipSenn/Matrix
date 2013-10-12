<cfscript>
request.jqm.ajaxEnabled = true;
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<a href="ajaxFalse.cfm" data-ajax="false">data-ajax="false"</a>
<a href="ajaxTrue.cfm" data-ajax="true">data-ajax="true"</a>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>