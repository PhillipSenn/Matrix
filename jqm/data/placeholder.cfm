<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>slider</h1>
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<div data-role="fieldcontain">
			<select id="mySelect">
				<option value="0" data-placeholder="true">Choose One of the Following:</option>
				<option value="1">One</option>
				<option value="2">Two</option>
				<option value="3">Three</option>
			</select>
		</div>
		I don't understand the purpose of the data-placeholder here.
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>

<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
