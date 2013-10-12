<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>$.ajaxStart</h1>
<button type="button">Do something Ajaxy</button>
<img id="myID" src="../../Images/ajax-loader.gif" hidden>
<p>
Icon from: <a href="http://www.ajaxload.info/">AjaxLoad.info</a>
</p>
<p>
	I think the new hotness is to use a <a href="http://api.jquery.com/category/deferred-object/">deferred object</a>.
</p>
<p>
	Here's an example of a <a href="../RoundTrip/Checkbox.cfm">round trip to a database</a>.
</p>

<cfinclude template="/Inc/foot.cfm">
<script src="ajaxStart.js"></script>
<cfinclude template="/Inc/End.cfm">
