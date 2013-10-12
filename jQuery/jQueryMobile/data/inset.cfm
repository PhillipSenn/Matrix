<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>data-inset</h1>
<ul data-role="listview">
	<li>One</li>
	<li>Two
		<ul data-inset="true">
			<li>A2</li>
			<li>B2</li>
			<li>C2</li>
		</ul>
	</li>
	<li>Three</li>
	<li>Four
		<ul>
			<li>A4</li>
			<li>B4</li>
			<li>C4</li>
		</ul>
	</li>
</ul>
I don't know what the purpose of data-inset is.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
