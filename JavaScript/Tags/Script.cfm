<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>The &lt;script&gt; tag</h1>
You want to separate your JavaScript from the html, so use:
<pre>
&lt;!DOCTYPE html&gt;<br>&lt;html&gt;<br>&lt;head&gt;<br>&lt;meta charset=&quot;utf-8&quot;&gt;
&lt;title&gt;&lt;/title&gt;
&lt;/head&gt;<br>&lt;body&gt;<br>&lt;div id=&quot;msg&quot;&gt;
&lt;/div&gt;
&lt;script src="http://www.google.com/jsapi">&lt;/script>
&lt;script>
google.load("jquery", "1", {uncompressed:true});
&lt;/script>
&lt;script src="YourJavaScriptGoesHere.js">&lt;/script>
&lt;/body>
&lt;/html>
</pre>
By putting it at the bottom of the page, you are able to work with the page after the elements have loaded.<br>
Early examples of JavaScript used the <code>document.write</code> command, but the preferred method to write to the screen is now to wait until the document loads and then add text.
<p>
Why separate your JavaScript from the html?  I can think of several reasons.  </p>
<p>1. Because it's faster. If it's in an external file, it can be cached by the browser.</p>
<p>2. More importantly, suppose you are working with a designer, and the designer needs to be editing the html. If the JavaScript is in a separate file, you can be editing it without worrying the other person on your team.</p>
<p>3. By making it unobtrustive, it's more portable. Just like an external css file can be linked from multiple pages, (every page on the site has the same look), a .js  file can give every page the same behaviors.</p>
<cfinclude template="/Library/html/foot.cfm">
<cfinclude template="/Inc/End.cfm">
