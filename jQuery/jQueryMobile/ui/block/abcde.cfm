<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<section data-role="page" id="myPage">
	<header data-role="header">
		<h1>Header</h1>
	</header>
	<div data-role="content">
		<div class="ui-grid-d">
			<div class="ui-block-a">
				<button>Button a</button>
			</div>
			<div class="ui-block-b">
				<button>Button b</button>
			</div>
			<div class="ui-block-c">
				<button>Button c</button>
			</div>
			<div class="ui-block-d">
				<button>Button d</button>
			</div>
			<div class="ui-block-e">
				<button>Button e</button>
			</div>
		</div>
	</div>
	<a data-role="button" href="#numeric">Numeric</a>
	<footer data-role="footer">
		<h4>Footer</h4>
	</footer>
</section>
<section data-role="page" id="numeric">
	<div data-role="content">
		<div class="ui-grid-d">
			<div class="ui-block-a">
				&nbsp;
			</div>
			<div class="ui-block-b">
				<a href="#" data-role="button">7</a>
			</div>
			<div class="ui-block-c">
				<a href="#" data-role="button">8</a>
			</div>
			<div class="ui-block-d">
				<a href="#" data-role="button">9</a>
			</div>
			<div class="ui-block-e">
				&nbsp;
			</div>
		</div>
		<div class="ui-grid-d">
			<div class="ui-block-a">
				&nbsp;
			</div>
			<div class="ui-block-b">
				<a href="#" data-role="button">4</a>
			</div>
			<div class="ui-block-c">
				<a href="#" data-role="button">5</a>
			</div>
			<div class="ui-block-d">
				<a href="#" data-role="button">6</a>
			</div>
			<div class="ui-block-e">
				&nbsp;
			</div>
		</div>
		<div class="ui-grid-d">
			<div class="ui-block-a">
				&nbsp;
			</div>
			<div class="ui-block-b">
				<a href="#" data-role="button">1</a>
			</div>
			<div class="ui-block-c">
				<a href="#" data-role="button">2</a>
			</div>
			<div class="ui-block-d">
				<a href="#" data-role="button">3</a>
			</div>
			<div class="ui-block-e">
				&nbsp;
			</div>
		</div>
	</div>
</section>

<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
