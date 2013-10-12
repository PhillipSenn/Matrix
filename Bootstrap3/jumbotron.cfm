<cfscript>
request.Bootstrap.container = "container";
</cfscript>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<style>
body {
	padding-top:70px;
}
</style>
<cfinclude template="/Inc/body.cfm">
<div class="jumbotron">
  <h1>Hello, world!</h1>
  <p>Bacon ipsum dolor sit amet boudin hamburger jowl beef ribs t-bone pork biltong, pork chop turducken tongue. T-bone short ribs ham salami, sausage ribeye chicken rump kielbasa ball tip. Ham hock prosciutto pork belly, turkey shankle leberkas t-bone cow ham rump frankfurter. Tri-tip t-bone shoulder beef ribs, tongue andouille sirloin boudin meatball rump pork chop. Strip steak pancetta shank brisket pork loin flank prosciutto.</p>
  <p><a class="btn btn-primary btn-large">Learn more</a></p>
</div>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>