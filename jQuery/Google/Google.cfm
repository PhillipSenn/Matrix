<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
After trying various combinations, I've decided:
<ol>
	<li>Load jQuery in the header</li>
	<li>Load it from Google</li>
	<li>Load it as a single link</li>
</ol>
<dl>
	<dt>Load jQuery in the header
	<dd>For me, jQuery is as much a part of JavaScript as the language itself.  
	Therefore, in order to provide the greatest flexibility (using it inside the body tag),
	I've decided to load jQuery in the header.</dd>
	</dt>
	<dt>Load it from Google
		<dd>Google hosts the latest version, so all my sites will be updated automatically
		whenever the latest version comes out.  And yes, that has bitten me once before,
		when they changed the attr method associated with input type="checkbox".
		</dd>
	</dt>
	<dt>Load it as a single link
		<dd>
		<pre>&lt;script src="//ajax.googleapis.com/ajax/libs/jquery/jquery.js">&lt;/script></pre>
		I think if I load it using this syntax:
		<pre>&lt;script src="http://www.google.com/jsapi">&lt;/script>
&lt;script>
google.load("jquery", "1", {uncompressed:true}); 
&lt;/script>
</pre>
		then it wouldn't be cached.
		So now in my ColdFusion code, I have two variables set in onRequestStart:
		request.jQuery and request.jQueryUI.
		</dd>
	</dt>
</dl>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
