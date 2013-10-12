<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Console.log</h1>
If you are browing with <a href="http://www.mozilla.com">Firefox</a>, and have installed the <a href="http://getfirebug.com/">Firebug</a> plugin, 
then you can see the console by pressing F12. Example:
<pre>console.log('Hello World');</pre>
One "Gotcha" is that you have to show the console first before it starts logging to it, so if you press F12, you'll also 
need to refresh the page.
<p>In Google Chrome, you can right-click anywhere in the page and choose inspect element, or go to Tools, JavaScript Console (Ctrl+Shift+J).</p>
<cfinclude template="/Inc/foot.cfm">
<script src="consoleLog.js"></script>
<cfinclude template="/Inc/End.cfm"> 

