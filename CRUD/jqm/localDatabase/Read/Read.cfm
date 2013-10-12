<cfscript>
request.jqm.AjaxEnabled = false;
request.jqm.header = "Web SQL Database";
request.jqm.content = false;

include "/Inc/html.cfm";
include "/Inc/body.cfm";
Print('<nav>');
Print('	<ul>');
Print('		<li><a href="cfmSource.cfm">cfm</a></li>');
Print('		<li><a href="Read.js">Read.js</a></li>');
Print('		<li><a href="/Library/jqm/foot.js">foot.js</a></li>');
Print('	</ul>');
Print('</nav>');
Print('<article>');
Print('	<ul data-filter="true" id="StatesListView">');
Print('	</ul>');
Print('</article');
include "/Inc/foot.cfm";
Print('<script src="Read.js"></script>');
include "/Inc/End.cfm";
</cfscript>