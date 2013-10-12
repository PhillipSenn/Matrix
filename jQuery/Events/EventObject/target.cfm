<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="target.css">
<cfinclude template="/Inc/body.cfm">
<h1>target</h1>
<cfinclude template="/Inc/Table.cfm">
Notice that click was attached to the table, so when a table cell is clicked, 
then the event bubbles up to the row and finally the table.
By inspecting the target, we can change the class of what was clicked.
<p>So this saves us from having to add a click event to every table cell.</p>
<p>
Now, the JavaScript is written to toggle the class of <em>whatever</em> was clicked below the table.
and in this example we have td, th and caption.  So I made put a cursor:pointer over every tr and caption element.
</p>
<p>This example was inspired by <a href="http://www.tvidesign.co.uk/blog/improve-your-jquery-25-excellent-tips.aspx">Improve you jQuery - 25 excellent tips</a>.</p>
<cfinclude template="/Inc/foot.cfm">
<script src="target.js"></script>
<cfinclude template="/Inc/End.cfm">
