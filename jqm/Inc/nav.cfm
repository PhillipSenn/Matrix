<cfscript>
Page = ListLast(cgi.SCRIPT_NAME,'/');
Page = ListFirst(Page,'.');
</cfscript>

<cfoutput>
<nav>
	<ul>
		<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewCFM.cfm?Page=#Page#">ColdFusion</a></li>
		<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewHTM.cfm?Page=#Page#&Showjs=0">HTML</a></li>
		<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewHTM.cfm?Page=#Page#&Showjqm=0">HTML + JS</a></li>
		<li><a data-ajax="false" href="/Matrix/jqm/ViewSource/ViewHTM.cfm?Page=#Page#">HTML + JS + JQM</a></li>
		<li><a href="##">&nbsp;</a></li>
	</ul>
</nav>
</cfoutput>