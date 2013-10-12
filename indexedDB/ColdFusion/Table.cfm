<cfquery name="qryWord">
SELECT *
FROM Word
ORDER BY WordName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<table>
	<thead>
		<tr>
			<th class="num">Row</th>
			<th>Noun</th>
			<th>Verb</th>
			<th>Adj</th>
			<th>Adv</th>
			<th>Word</th>
			<th>Pronunciation</th>
		</tr>
	</thead>
	<cfset Variables.Noun = 'Noun'>
	<cfset Variables.Verb = 'Verb'>
	<cfset Variables.Adj = 'Adj'>
	<cfset Variables.Adv = 'Adv'>
	<cfloop query="qryWord">
		<tr>
			<td class="num">#CurrentRow#</td>
			<td>#IIF(Noun,'Variables.Noun','')#</td>
			<td>#IIF(Verb,'Variables.Verb','')#</td>
			<td>#IIF(Adj,'Variables.Adj','')#</td>
			<td>#IIF(Adv,'Variables.Adv','')#</td>
			<td>#WordName#</td>
			<td>#Pronunciation#</td>
		</tr>
	</cfloop>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
