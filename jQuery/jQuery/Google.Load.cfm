<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>Recipe 1.2 of the jQuery cookbook says to put all your JavaScript at the bottom of the page. I agree with this advice, as it makes it feel like I'm more in control of what the language is doing. There's less mystery about the DOM being loaded if you put your JavaScript code at the bottom of the page (before /body).</p>
<p>Technically, the only thing needed to load jQuery is:</p>
<pre>
&lt;script src="http://www.google.com/jsapi">&lt;/script>
&lt;script>
<a href="http://code.google.com/apis/libraries/devguide.html#jqueryDiv">google.load</a>("jquery", "1", {uncompressed:true}); 
&lt;/script>
</pre>
<p>I also have google.load(&quot;jqueryui&quot;, &quot;1&quot;)   because the PRINT function uses jQuery UI icons. Example.css links to jquery-ui.css.</p>
<p>Q: Why use a Content Delivery Network?
	<br>
A: This way you're always using the latest version. You can see in the <a href="http://en.wikipedia.org/wiki/JQuery#Release_history">release history</a> that things are speeding up. </p>
<p>	Q: What if they change something that breaks your code.<br>
A: You're hosed. For instance, the 1.6 update &quot;<a href="http://blog.jquery.com/2011/05/12/jquery-1-6-1-released/">caused some confusion</a>&quot; regarding the .attr method, and was corrected 9 days later. You may want to point to a specific version on production, but in development, I like to always have the latest stable release.</p>
<p>
	Q: Why the {uncompressed : true} setting?<br>
I've found that while single stepping through my  code, the debugger will sometimes go into the jQuery code itself.<br>
If you leave that setting out, Google serves it without any line breaks, saving bandwidth.<br>
After your program has been in production for a while, and you're no longer actively developing it, simply remove that setting.</p>
<p>Q: What if Google's down?<br>
A: Are you kidding me? What if Google's down?
</p>

<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
