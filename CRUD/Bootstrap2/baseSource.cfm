<cfset request.jqm.header = "Source code for a base template">
<cfset myDir = ExpandPath(".")>
<cfset myFile = FileRead(myDir & "/base.cfm")>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#Replace(myFile,"<","&lt;","all")#</pre>
This is the base template that I use for the starting point for all my web pages.
<p>I admit that wrapping all my pages in &lt;cfoutput> is controversial, but I made a quality decision to do so
for all pages and haven't looked back since.</p>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>