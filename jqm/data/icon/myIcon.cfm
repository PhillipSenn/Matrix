<cfinclude template="/Inc/html.cfm">
<style>
.ui-icon-myIcon {
	background-image:url(jQueryMobile.DogLogo8.png);
}
</style>
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<img src="DogLogo.gif" width="129" height="116">
		<a href="#" data-role="button" data-icon="myIcon">Click here</a>
	</div>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
