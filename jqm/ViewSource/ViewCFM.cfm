<cfscript>
request.jqm.page = false;
x = 'Not found.';
if (FindNoCase('http://www.phillipsenn.com/matrix/jqm/',cgi.HTTP_REFERER)) {
	myPath = Replace(cgi.HTTP_REFERER,'http://www.phillipsenn.com','');
	myPath = GetDirectoryFromPath(myPath);
	myPath = ExpandPath(myPath);
	x = FileRead(myPath & '/' & url.Page & '.cfm');
	x = HTMLCodeFormat(x);
	x = Replace(x,'	','   ','all');
}
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section>
	<header>
		<h1>ColdFusion source code to: #url.Page#.cfm</h1>
	</header>
	<nav>
		<ul>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=html.cfm">html.cfm</a></li>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=body.cfm">body.cfm</a></li>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=foot.cfm">foot.cfm</a></li>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=Init.cfm">Init.cfm</a></li>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=End.cfm">End.cfm</a></li>
		</ul>
		<ul>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=Print.cfm">Print.cfm</a></li>
			<li><a href="JavaScript:;">&nbsp;</a></li>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=foot.js">foot.js</a></li>
			<li><a href="/Library/jqm/ViewSource.cfm?Page=ajaxDisabled.js">ajaxDisabled.js</a></li>
			<li><a href="JavaScript:;">&nbsp;</a></li>
		</ul>
	</nav>
	<pre data-role="content">#x#</pre>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>