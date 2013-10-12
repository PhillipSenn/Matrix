<cfscript>
request.jqm.page = false;
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-add-back-btn="true" data-back-btn-text="Previous">
	<header>
		<h1>Page 1</h1>
	</header>
	<cfinclude template="/Inc/nav.cfm">
	<article>
		Notice that it doesn't appear on page 1 even though it's been specified.
		<a href="##Page2">Page 2</a>
	</article>
</section>
<section data-add-back-btn="true" data-back-btn-text="Previous" id="Page2">
	<header>
		<h1>Page 2</h1>
	</header>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>