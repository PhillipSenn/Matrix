<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>A JavaScript object is a set of <a href="NameValuePair.cfm">name/value pairs</a>. Here's an object:</p>
<pre>
var X = {}; // An empty object
X.A = 10;
X.B = 20;
</pre>
This is often represented by
<pre>
var X = {
   A:10,
   B:20
}
</pre>
<p>Notice that X is the only thing being assigned here, so the equal sign is to the right of X. </p>
<p>X.A is assigned a value using a colon. The comma separates the two name/value pairs.</p>
<p> If you are passing parameters to a function, then you can pass them as a single object like so:</p>
<pre>
myFunction(X);
</pre>
or you could do it like in the following example:
<cfinclude template="/Inc/foot.cfm">
<script src="Object.js"></script>
<cfinclude template="/Inc/End.cfm">
