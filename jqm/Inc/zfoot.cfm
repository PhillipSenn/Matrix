<cfscript>
myJavaScript = '';
param name="request.jqm.Page" default="true";
if (request.jqm.Page) {
	param name="request.jqm.Content" default="true";
	if (request.jqm.Content) {
		Print('	</article>');
	}
	include "/Inc/footer.cfm";
	Print('</section>');
} else {
}
Print('<section id="HTML">');
Print('	<header>');
Print('		<h1>HTML</h1>');
Print('	</header>');
Print('	<article class="pre">');
Print('	</article>');
Print('	<footer>');
Print('		<nav>');
Print('			<ul>');
Print('				<li><a href="##Example">Example</a></li>');
Print('				<li><a href="JavaScript:;" class="ui-btn-active">HTML</a></li>');
if (myJavaScript NEQ "") {
	Print('				<li><a href="##JavaScript">JavaScript</a></li>');
}
Print('			</ul>');
Print('		</nav>');
Print('	</footer>');
Print('</section>');

if (myJavaScript NEQ "") {
	Print('<section id="JavaScript">');
	Print('	<header>');
	Print('		<h1>JavaScript</h1>');
	Print('	</header>');
	Print('	<article class="pre">' & myJavaScript);
	Print('	</article>');
	Print('	<footer>');
	Print('		<nav>');
	Print('			<ul>');
	Print('				<li><a href="##Example">Example</a></li>');
	Print('				<li><a href="##HTML">HTML</a></li>');
	Print('				<li><a href="JavaScript:;" class="ui-btn-active">JavaScript</a></li>');
	Print('			</ul>');
	Print('		</nav>');
	Print('	</footer>');
	Print('</section>');
}
include "/Library/jqm/foot.cfm";
Print('<script src="' & Application.home.dir & 'jqm/js/foot.js"></script>');
</cfscript>
