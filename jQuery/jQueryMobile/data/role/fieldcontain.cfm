<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>fieldcontain</h1>
<div data-role="fieldcontain">
	<label for="FirstName">First Name:</label>
	<input id="FirstName" type="text" value="You have to explicitly say type=text">
</div>
<div data-role="fieldcontain">
	<label for="myPass">Password:</label>
	<input id="myPass" type="password">
</div>
<div data-role="fieldcontain">
	<label for="mySearch">Search:</label>
	<input id="mySearch" type="search">
</div>
<div data-role="fieldcontain">
	<label for="myTextArea">Text Area:</label>
	<textarea id="myTextArea"></textarea>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
