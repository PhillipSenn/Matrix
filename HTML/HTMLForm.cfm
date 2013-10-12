<form id="filters" preservedata="yes">
	<ul class="hfilter">
		<li>		</li>
		<li>
			<input id="UsageIntro" name="Usage" type="checkbox" value="Intro"<cfif ListFind(url.Usage,"Intro")> checked</cfif>>
			<label for="UsageIntro">Intro</label>
		</li>
		<li>
		<input id="UsageBegin" name="Usage" type="checkbox" value="Begin"<cfif ListFind(url.Usage,"Begin")> checked</cfif>>
		<label for="UsageBegin">Beginner</label>
		</li>
		<li>
		<input id="UsageInter" name="Usage" type="checkbox" value="Inter"<cfif ListFind(url.Usage,"Inter")> checked</cfif>>
		<label for="UsageInter">Intermediate</label>
		</li>
		<li>
		<input id="UsageAdv" name="Usage" type="checkbox" value="Adv"<cfif ListFind(url.Usage,"Adv")> checked</cfif>>
		<label for="UsageAdv">Advanced</label>
		</li>
		<li>
		<input id="UsagePast" name="Usage" type="checkbox" value="Past"<cfif ListFind(url.Usage,"Past")> checked</cfif>>
		<label for="UsagePast">Past</label>
		</li>
		<li>
		<input id="UsageFuture" name="Usage" type="checkbox" value="Future"<cfif ListFind(url.Usage,"Future")> checked</cfif>>
		<label for="UsageFuture">Future</label>
		</li>
		<li>
		<input id="UsageSelectAll" name="Usage" type="checkbox" value="Select All"<cfif ListFind(url.Usage,"Select All")> checked</cfif>>
		<label for="UsageSelectAll">Select All</label>
		</li>
	</ul>
	<br clear="all">
	<cfinclude template="/Inc/sf-menu.cfm">
</form>