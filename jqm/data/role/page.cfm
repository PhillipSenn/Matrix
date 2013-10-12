<cfset request.jqm.js = true>
<cfset request.jqm.page = false>
<cfset request.jqm.hidden = false>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="Example">
	<header data-role="header">
		<h1>Header 1</h1>
	</header>
	<article data-role="content">
		<ol>
			<li>You are on page 1</li>
			<li><a href="##Page2">Go to page 2</a></li>
		</ol>
		Page 2 is actually in the same file as page 1, they just each have data-role="page".
	</article>
	<cfinclude template="/Inc/footer.cfm">
</section>
<section data-role="page" id="Page2">
	<header data-role="header">
		<h1>Header 2</h1>
	</header>
	<article data-role="content">
		<ol>
			<li><a href="##Example">Go to page 1</a></li>
			<li>You are on page 2</li>
		</ol>
	</article>
	<cfinclude template="/Inc/footer.cfm">
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>