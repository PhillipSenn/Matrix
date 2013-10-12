<cfset request.jqm.Page = false>

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header" data-theme="b">
		<h1>Header</h1>
	</header>
	<article data-role="content">
		<a href="#" data-role="button" data-theme="b">data-theme="b"</a>
	</article>
	<cfinclude template="/Inc/footer.cfm">
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
