<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">

<div class="tile ui-widget-content" id="PlayArea">
	<div class="ui-widget-header">Play Area</div>
</div>

<div class="tile ui-widget-content ui-corner-all">
	<div class="ui-widget-header">Drag me around</div>
</div>
I don't understand this one. 
The documentation says:
<blockquote>
The element passed to or selected by the appendTo option will be used as the draggable helper's container during dragging. By default, the helper is appended to the same container as the draggable.
</blockquote>
But I don't understand what the draggable helper is.
<cfinclude template="/Inc/foot.cfm">
<script src="appendTo.js"></script>
<cfinclude template="/Inc/End.cfm">
