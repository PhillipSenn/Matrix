<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<div data-role="page" id="myPage">
	<div data-role="header">
		<h1>Header</h1>
	</div>
	<div data-role="content">
		<a href="JavaScript:;" data-role="button" id="doink">Doink!</a>
	</div>
	<div data-role="footer">
		<h4>Footer</h4>
	</div>
</div>
<cfinclude template="/Inc/foot.cfm">
<audio id="doink-wav" src="../../../../wav/doink.wav" preload="auto"></audio>
<script src="Click.js"></script>
<cfinclude template="/Inc/End.cfm">
