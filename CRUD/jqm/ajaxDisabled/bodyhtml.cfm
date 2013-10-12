<cfset request.jqm.header = "The html that body.cfm creates">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>&lt;body>
&lt;section data-title="jQuery Mobile">
	&lt;header>
		&lt;a href="JavaScript:;" data-rel="back" data-icon="arrow-l">Back&lt;/a>
		&lt;h1>User: 3&lt;/h1>
	&lt;/header>
	&lt;article>
</pre>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>