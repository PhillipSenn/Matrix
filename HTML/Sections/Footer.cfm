<cfinclude template="/Inc/html.cfm">
<link href="Footer.css" rel="stylesheet" type="text/css">
<cfinclude template="/Inc/body.cfm">
<header>
<img src="" alt="my Logo" width="180" height="90" id="myLogo" style="background: #C6D580; display:block;">
</header>
<aside>
	Aside goes here
</aside>
<article>
	<cfinclude template="/Matrix/Inc/GettysburgAddress.cfm">
</article>
<footer>
	position: relative is required by the IE6 hasLayout property, in order to clear.
</footer>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
