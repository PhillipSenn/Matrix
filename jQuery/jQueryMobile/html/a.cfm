<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<ul>
			<li><a href="a2.cfm">a2</a></li>
			<li><a href="a2.cfm" rel="external">a2</a>, using the rel attribute</li>
			<li><a href="a2.cfm" target="_blank">a2</a>, using target="_blank"</li>
		</ul>
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
