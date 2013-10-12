<cfset request.jqm.Page = false>

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="Page1">
	<header data-role="header">
		<h1>Header 1</h1>
	</header>
	<article data-role="content">
		<ol>
			<li>You are on page 1</li>
			<li><a href="#Page2">Go to page 2</a></li>
			<li><a href="#Page3">Go to page 3</a></li>
		</ol>
	</article>
	<cfinclude template="/Inc/footer.cfm">
</section>
<section data-role="page" id="Page2">
	<header data-role="header">
		<h1>Header 2</h1>
	</header>
	<article data-role="content">
		<ol>
			<li><a href="#Page1">Go to page 1</a></li>
			<li>You are on page 2</li>
			<li><a href="#Page3">Go to page 3</a></li>
		</ol>
	</article>
	<cfinclude template="/Inc/footer.cfm">
</section>
<section data-role="page" id="Page3">
	<header data-role="header">
		<h1>Header 3</h1>
	</header>
	<article data-role="content">
		<ol>
			<li><a href="#Page1">Go to page 1</a></li>
			<li><a href="#Page2">Go to page 2</a></li>
			<li>You are on page 3</li>
		</ol>
	</article>
	<cfinclude template="/Inc/footer.cfm">
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
