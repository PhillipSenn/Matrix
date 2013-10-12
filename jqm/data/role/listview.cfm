<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>listview</h1>
	</header>
	<div data-role="content">
		Two has lists underneath it.<br>
		Four is not a link.<br>
		This is a third line.
		<ul data-role="listview">
			<li><a href="#">One</a></li>
			<li><a href="#">Two</a>
				<ul>
					<li>A2</li>
					<li>B2</li>
					<li>C2</li>
				</ul>
			</li>
			<li><a href="#">Three</a></li>
			<li>Four
				<ul>
					<li>A4</li>
					<li>B4</li>
					<li>C4</li>
				</ul>
			</li>
		</ul>
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
