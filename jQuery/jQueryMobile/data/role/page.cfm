<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="Page1">
	<header data-role="header">
		<h1>Header 1</h1>
	</header>
	<div data-role="content">
		<ol>
			<li>You are on page 1</li>
			<li><a href="#Page2">Go to page 2</a></li>
		</ol>
		Page 2 is actually in the same file as page 1, they just each have data-role="page".
	</div>
	<footer data-role="footer">
		<h4>Footer 1</h4>
	</footer>
</section>
<section data-role="page" id="Page2">
	<header data-role="header">
		<h1>Header 2</h1>
	</header>
	<div data-role="content">
		<ol>
			<li><a href="#Page1">Go to page 1</a></li>
			<li>You are on page 2</li>
		</ol>
	</div>
	<footer data-role="footer">
		<h4>Footer 2</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
