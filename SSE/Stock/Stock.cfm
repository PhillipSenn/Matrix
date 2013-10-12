<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<p><a href="http://www.hixie.ch/specs/html/server-sent-events/server-sent-events">Source</a></p>
<event-source src="StockEvent.cfm" id="stock">
<cfinclude template="/Inc/foot.cfm">
<script src="Stock.js"></script>
<cfinclude template="/Inc/end.cfm">
