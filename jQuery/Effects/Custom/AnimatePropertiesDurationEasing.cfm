<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Library/Google/jQueryUI.css.cfm">
<cfinclude template="/Inc/body.cfm">
<h1>Animate(properties,duration,easing)</h1>
Note: This image has style="position: relative".
<p>
I've applied the <a href="http://jqueryui.com/demos/effect/easing.html">easeInOutBounce</a> easing.<br>
This easing requires <a href="http://jqueryui.com/">jQuery UI</a> to be loaded after jQuery.<br>
And jQuery UI has a css <a href="http://jqueryui.com/themeroller/">theme</a> that must accompany it as well.</p>
<p>
<img src="../../../Matrix/Images/Matrix Trinity Kick.jpg" style="position: relative" />
</p>
<p>
	<button id="myAnimation" type="button">Animate</button>
</p>
Notice also that the button is hidden right away - before the animation is finished.
<cfinclude template="/Inc/footUI.cfm">
<script src="AnimatePropertiesDurationEasing.js"></script>
<cfinclude template="/Inc/End.cfm">
