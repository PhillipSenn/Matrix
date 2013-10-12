<cfinclude template="/Library/html/html.cfm">
<link rel="stylesheet" type="text/css" href="/Library/jQuery/superfish/css/superfish.css" media="screen">
<cfinclude template="/Library/html/body.cfm">
		<ul class="sf-menu">
			<li class="current">
				<a href="#a">menu item</a>
				<ul>
					<li>
						<a href="#aa">menu item that is quite long</a>
					</li>
					<li class="current">
						<a href="#ab">menu item</a>
						<ul>
							<li class="current"><a href="#">menu item</a></li>
							<li><a href="#aba">menu item</a></li>
							<li><a href="#abb">menu item</a></li>
							<li><a href="#abc">menu item</a></li>
							<li><a href="#abd">menu item</a></li>
						</ul>
					</li>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
						</ul>
					</li>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">menu item</a>
			</li>
			<li>
				<a href="#">menu item</a>
				<ul>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">short</a></li>
							<li><a href="#">short</a></li>
							<li><a href="#">short</a></li>
							<li><a href="#">short</a></li>
							<li><a href="#">short</a></li>
						</ul>
					</li>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
						</ul>
					</li>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
						</ul>
					</li>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
						</ul>
					</li>
					<li>
						<a href="#">menu item</a>
						<ul>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
							<li><a href="#">menu item</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">menu item</a>
			</li>	
		</ul>
<cfinclude template="/Library/html/foot.cfm">
<cfinclude template="/Library/Google/jQuery.cfm">
<script type="text/javascript" src="/Library/jQuery/superfish/js/hoverIntent.js"></script>
<script type="text/javascript" src="/Library/jQuery/superfish/js/superfish.js"></script>
<script type="text/javascript">

// initialise plugins
jQuery(function(){
	jQuery('ul.sf-menu').superfish();
});

</script>
<cfinclude template="/Library/html/end.cfm">
