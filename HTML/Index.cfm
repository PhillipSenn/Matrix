<cflocation url="HTML.cfm" addtoken="no">

<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p><a href="HTML.cfm">Click here to go directly to the Matrix</a>.</p>
<details>
	<summary>What is the HTML Matrix?</summary>
It's a list of all the 
<a href="HTML.cfm?Usage=All&Cat=All&Attr=&Event=">tags</a>, their 
<a href="HTML.cfm?Usage=All&Cat=&Attr=All&Event=">attributes</a> and 
<a href="HTML.cfm?Usage=All&Cat=&Attr=&Event=All">events</a> in the HTML standard. 
</details>
<details>
	<summary>What did you learn while building the matrix?</summary>
	<p>There are varying reasons not to use things.
	<ul>
		<li>They've been deprecated</li>
		<li>They're considered bad practice</li>
		<li>They're not universally implemented</li>
	</ul>
	For example, this page uses the <a href="http://www.w3.org/TR/html5/interactive-elements.html#the-details-element">details</a> element, 
	but <a href="http://caniuse.com/#search=details">it's not implemented</a> by anyone except Chrome.
	</p>
</details>
<details>
	<summary>What surprised you most when building the matrix?</summary>
	<p>While entering <a href="HTML.cfm?Usage=All&Cat=&Attr=Global%20Attribute&Event=">Global Attributes</a>, 
	I found that every element has an attribute called 'hidden'.
	</p>
</details>
<details>
	<summary>What challenges did you have?</summary>
	<p>Coming up with a usage rating that can be used for every element, attribute and event, and also 
	coming up with minimalist examples for everything.</p>
</details>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
