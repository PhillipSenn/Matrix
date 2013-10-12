<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" data-theme="e">
	<header data-role="header">
		<h1>Art Search</h1>
	</header>
	<div data-role="content">
		<div data-inline="true">
			<form action="search2.cfm" method="post">
				<input type="search" name="search" data-inline="true">
				<input type="submit" value="Search" data-inline="true">
			</form>
		</div>
	</div>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="swipeleft.js"></script>
<cfinclude template="/Inc/End.cfm">
