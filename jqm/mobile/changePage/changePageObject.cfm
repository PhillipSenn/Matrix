<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<form>
			<input name="FirstName" value="Phillip" autofocus>
			<input name="LastName" value="Senn">
			<a href="JavaScript:;">Save</a>
		</form>
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<script src="changePageObject.js"></script>
<cfinclude template="/Inc/End.cfm">
