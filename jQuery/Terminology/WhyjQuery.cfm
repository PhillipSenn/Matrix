<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Why jQuery</h1>
<p>JavaScript is implemented differently in different browsers.</p>
<h2>Example 1: text</h2>
<p>To get the text of an element in Firefox, use:<br>
<code>element.textContent</code>.</p>
<p>But in Internet Explorer, use:<br> <code>element.innerText</code>.</p>
<p>So you have to write the logic that says something like: </p>
<p>if (element has the textContent property) { use it } else { use the innerText property }.</p>
<p>jQuery solves this with a .text() method.<br>
<code>$('p').text()</code><br> 
will always return the text regardless of the browser. No kidding! If you look at the <a href="http://code.jquery.com/jquery-1.6.2.js">jQuery source code</a> and do a search for &quot;textContent&quot;, you'll see that it's using &quot;elem.textContent || elem.innerText&quot;.</p>
<h2>Example 2: Events</h2>
<p>Internet Explorer uses addEventListener, while Firefox uses attachEvent. So you have to write your JavaScript like this:</p>
<h3>JavaScript version:</h3>
<pre>
var X = document.getElementById('myID');
if (typeof X.addEventListener !== 'undefined') {
   X.addEventListener('click',myClickListener,false);
} else if (typeof X.attachEvent !== 'undefined') {
   X.attachEvent('onclick',myClickListener);
} else {
   // unknown browser
}
</pre>
<h3>jQuery version:</h3>
<code>$('#myID').click(function() {});</code>
<p>And did you notice that Internet Explorer calls is 'click', while Firefox called it 'onclick'?</p>
<p>So a common library had to have been written, or each developer would write one on their own.</p>
<p>OK, so enough said about why jQuery...</p>
<cfinclude template="/Library/html/foot.cfm">
<cfinclude template="/Inc/End.cfm">
