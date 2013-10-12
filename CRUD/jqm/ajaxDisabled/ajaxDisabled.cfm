<cfscript>
request.jqm.ajaxEnabled = false;
request.jqm.Page = false;
include "/Inc/html.cfm";
include "/Inc/body.cfm";
Print('<section>');
Print('	<header>');
Print('		<a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back</a>');
Print('		<h1>Mobile CRUD</h1>');
Print('		<a href="JavaScript:;">User: ' & session.qry.UsrID & '</a>');
Print('	</header>');
Print('	<nav>');
Print('		<ul>');
Print('			<li><a href="ULSourcecode.cfm">cfm</a></li>');
Print('			<li><a href="htmlSourcecode.cfm">html.cfm</a></li>');
Print('			<li><a href="bodySourcecode.cfm">body.cfm</a></li>');
Print('			<li><a href="footSourcecode.cfm">foot.cfm</a></li>');
Print('			<li><a href="EndSourcecode.cfm">end.cfm</a></li>');
Print('		</ul>');
Print('	</nav>');

Print('	<nav>');
Print('		<ul>');
Print('			<li><a href="ulhtml.cfm">html</a></li>');
Print('			<li><a href="htmlhtml.cfm">html</a></li>');
Print('			<li><a href="bodyhtml.cfm">body</a></li>');
Print('			<li><a href="foothtml.cfm">foot</a></li>');
Print('			<li><a href="footjs.cfm">foot.js</a></li>');
Print('		</ul>');
Print('	</nav>');
Print('	<article>');
Print('<ul data-role="listview" data-filter="true">');
for(qry in session.qryState) {
	Print('<li>');
	Print('<a href="State.cfm?StateID=' & qry.StateID & '">' & qry.StateName & '</a>');
	Print('<span class="ui-li-count">' & qry.Cities & '</span>');
	Print('</li>');
}
Print('</ul>');
Print('	</article');
Print('</section>');
include "/Inc/foot.cfm";
include "/Inc/End.cfm";
</cfscript>
