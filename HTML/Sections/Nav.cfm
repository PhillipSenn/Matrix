<cfinclude template="/Inc/html.cfm">
<link href="Nav.css" rel="stylesheet" type="text/css">
<cfinclude template="/Inc/body.cfm">
<header>
<img src="" alt="my Logo" width="180" height="90" id="myLogo" style="background: #C6D580; display:block;">
</header>
<nav>
	<ul>
		<li><a href="JavaScript:;">List Item One</a></li>
		<li><a href="JavaScript:;">List Item Two</a></li>
		<li><a href="JavaScript:;">List Item Three</a></li>
	</ul>
</nav>
</nav>
<aside>
	Notice that the aside comes first in the html, but is floated to the right.
</aside>
<article>
I use the following to style the nav:
<pre>
nav ul {
	padding-left:0;
	margin:0;
}
nav ul li {
	display:inline; /* This makes an unordered list go horizontally vs. vertically */
}
nav ul li:after {
	content:" |"; /* after every list item, add a separator */
}
nav ul li:last-child:after {  /* Except the last list item.  This has limited browser support */
	content: ""; 
}
</pre>

</article>
<footer>
	Footer goes here
</footer>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
