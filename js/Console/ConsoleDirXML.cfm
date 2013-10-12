<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Console.dirxml</h1>
<p>Here we can see that the google.load command actually inserts</p>
<pre>&lt;script type=&quot;text/javascript&quot; src=&quot;http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.js&quot;&gt;&lt;/script&gt;</pre>
<p>into the document.</p>
<p>Here's something else to watch out for:
	<div>A div element inside a paragraph</div>
	If you look at the console dirxml of this document though, 
	you'll notice that the div is actually outside the paragraph tag.
</p>
<cfinclude template="/Inc/foot.cfm">
<script src="ConsoleDirXML.js"></script>
<cfinclude template="/Inc/End.cfm">
