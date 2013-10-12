<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>+</h1>
Any input that is next to a label is given class="myClass", which is a red border.
Notice that the first radio button and the first checkbox are not outlined, even though they were correctly given class="myClass".
<p>
The Save button has not, since it doesn't have a label next to it.
</p>
<cfinclude template="/Inc/form.cfm">
<cfinclude template="/Inc/foot.cfm">
<script src="Plus.js"></script>
<cfinclude template="/Inc/End.cfm">
