<cfinclude template="/Inc/html.cfm">
<link href="Header.css" rel="stylesheet" type="text/css">
<cfinclude template="/Inc/body.cfm">
<header>
	<img src="" alt="my Logo" width="180" height="90" id="myLogo" align="left"
	style="background: #C6D580; display:block;">
	The image has align=left. In reality, I think you would have an image as a background element and padding
	to make sure the text didn't overlay the image.
</header>
<aside>
	Aside has clear:left;
</aside>
<article>
	Article has clear:left;
	<cfinclude template="/Matrix/Inc/GettysburgAddress.cfm">
</article>
<footer>
	Footer goes here
</footer>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
