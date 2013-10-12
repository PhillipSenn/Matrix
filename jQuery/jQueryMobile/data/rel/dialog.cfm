<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage1">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<a href="#myPage2" data-rel="dialog" data-transition="pop">Dialog:</a>
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<section data-role="page" id="myPage2">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		This is the dialog 2 page. Note that I added the data-transition=&quot;pop&quot;.</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
