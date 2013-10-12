<cfscript>
Print('<footer>');
Print('	<nav>');
Print('		<ul>');
Print('			<li><a href="JavaScript:;" class="ui-btn-active">Example</a></li>');
Print('			<li><a href="##HTML">HTML</a></li>');
if (myJavaScript NEQ "") {
	Print('			<li><a href="##JavaScript">JavaScript</a></li>');
}
Print('		</ul>');
Print('	</nav>');
Print('</footer>');
</cfscript>
