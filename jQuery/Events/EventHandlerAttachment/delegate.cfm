<cfinclude template="/Inc/html.cfm">
<link rel="stylesheet" type="text/css" href="../../CSS/td.hover.css">
<cfinclude template="/Inc/body.cfm">
<h1>.delegate</h1>
<button name="AddNew" type="button">Add New Row</button>
<cfinclude template="/Inc/table.cfm">
<p>
If we had not used delegate, then any new rows added to the table would not have the hover method attached to them.
</p>
<p>
The top level selector would be <code>document</code>, but it's best to get the selector as close as possible.
</p>
<cfinclude template="/Inc/foot.cfm">
<script src="delegate.js"></script>
<cfinclude template="/Inc/End.cfm">
