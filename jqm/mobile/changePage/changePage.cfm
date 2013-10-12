<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<a href="JavaScript:;">Change Page</a>
	</div>
	<cfinclude template="/Inc/Source.cfm">
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="changePage.js"></script>
<cfinclude template="/Inc/End.cfm">
