<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p>Old school programmers think of an array as a block of consecutive memory addresses.</p>
<pre><img src="one dimension array.jpg" width="384" /></pre>
<p>A JavaScript array is not like that. If anything, I would call it an object of number/value pairs (as opposed to <a href="NameValuePair.cfm">name/value</a> pairs).</p>
<p>An array is an <a href="Object.cfm">object</a>, with a length property, and any other property names are limited to numbers only, with  an array prototype.</p>
<p> If I were to create the following array from scratch:</p>
<pre>var X = ['first','second','third'];</pre>
<p> it would be done like this:</p>
<pre>var x = {
   length : 3,
   '0' : 'first',
   '1' : 'second',
   '2' : 'third' 
}; 
x.__proto__ = Array.prototype; </pre>
<p>The array prototype has lots of  <a href="http://www.w3schools.com/jsref/jsref_obj_array.asp">methods</a>. Here's what a one dimensional array looks like:</p>
<p>var X = new Array();</p>
<cfinclude template="/Inc/foot.cfm">
<script src="Array.js"></script>
<cfinclude template="/Inc/End.cfm">
