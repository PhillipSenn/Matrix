<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
If you include the following code in your website after loading jQuery:
<pre>
&lt;script src="https://getfirebug.com/firebug-lite.js">&lt;/script>
</pre>
Then you have given your users the ability to look at the console.
<cfinclude template="/Library/html/foot.cfm">
<script src="/Library/js/log.js"></script>
<cfinclude template="/Library/Google/jQuery.cfm">
<script src="https://getfirebug.com/firebug-lite.js"></script>
<script src="Firebuglite.js"></script>
<cfinclude template="/Inc/End.cfm">
