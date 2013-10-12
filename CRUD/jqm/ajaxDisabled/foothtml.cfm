<cfset request.jqm.header = "The html that foot.cfm creates">

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>&lt;/article>
&lt;/section>
&lt;script src="//code.jquery.com/jquery-2.0.0<span class="ui-body-b">.js</span>">&lt;/script>
&lt;script src="/Library/jqm/foot<span class="ui-body-b">.js</span>">&lt;/script>
&lt;script src="//code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min<span class="ui-body-b">.js</span>">&lt;/script>
</pre>
We supply all of our JavaScript before the &lt;/body> tag.
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>