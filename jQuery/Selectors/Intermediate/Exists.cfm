<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Exists</h1>
<p>You can test if a jQuery collection contains any elements by trying to access the first element.</p>
<p>A JavaScript if/then statement only tests to see if the condition is <strong>truthy</strong>.</p>
<p><strong>Falsey</strong> values are:</p>
<ul>
	<li>false</li>
	<li>null</li>
	<li><em>undefined</em></li>
	<li>""</li>
	<li>0</li>
	<li>NaN</li>
</ul>
<p><strong>Truthy</strong> values are: Anything that's not <strong>falsey</strong>, so that includes text, arrays (even an empty array) - practically everything.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="Exists.js"></script>
<cfinclude template="/Inc/End.cfm">
