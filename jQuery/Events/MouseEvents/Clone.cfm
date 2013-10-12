<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>clone</h1>
<cfinclude template="/Inc/Table.cfm">
Click on a table to cell to clone a row.
<p>
It looks like you can do the same thing inserting $tr.html(). One advantage though
is that you can apply jQuery methods to the cloned variable before
inserting it into the DOM.
</p>
<cfinclude template="/Inc/foot.cfm">
<script src="clone.js"></script>
<cfinclude template="/Inc/End.cfm">
