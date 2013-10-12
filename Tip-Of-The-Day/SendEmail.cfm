<cfset qryUsr = Application.Usr.View1()>
<cfloop query="qryUsr">
	<cfif Find("@gmail.com",UsrName)>
		<cfset qryQuestion = Application.Question.NextQuestion(UsrID)>
		<cfset qryAnswer = Application.Answer.Where(
			FK="QuestionID",
			ID=qryQuestion.QuestionID,
			OrderBy="NewID()"
		)>
		<cfmail from="PhillipSenn@gmail.com" to="#UsrName#" type="html" subject="#qryQuestion.QuestionName#">
			#QuestionDesc#
			<hr>
			<ol>
			<cfloop query="qryAnswer">
				<li><a href="http://www.cfmZenGarden.com/Matrix/Tip-of-the-Day/Guess.cfm?AnswerID=#AnswerID#">#AnswerName#</a></li>
			</cfloop>
			</ol>
			<p>
				<a href="http://www.cfmZenGarden.com/Matrix/Tip-of-the-day/Unsubscribe.cfm">Unsubscribe</a>
			</p>
		</cfmail>
	</cfif>
</cfloop>
